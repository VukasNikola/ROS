#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include <action_exercise/ChargingAction.h>
class ChargingAction
{
protected:
    ros::NodeHandle nh_;
    actionlib::SimpleActionServer<action_exercise::ChargingAction> as_;
    std::string action_name_;
    action_exercise::ChargingFeedback feedback_;
    action_exercise::ChargingResult result_;

public:
    ChargingAction(std::string name) : as_(nh_, name, boost::bind(&ChargingAction::executeCB, this, _1),
                                            false),
                                        action_name_(name)
    {
        as_.start();
    }
    ~ChargingAction(void) {}
    void executeCB(const action_exercise::ChargingGoalConstPtr &goal)
    {
    
        float starting_charge = 5.0;
        float goal_charge = goal->goal_charge;
        float charge_rate = (goal_charge - starting_charge)/60.0;
        
        feedback_.current_charge = starting_charge;
        ros::Rate r(1);
        bool success = true;

        for (int i = 0; i < 60; i++)
        {
            if (as_.isPreemptRequested() || !ros::ok())
            {
                ROS_INFO("%s: Preempted", action_name_.c_str());
                as_.setPreempted();
                success = false;
                break;
            }
            
            feedback_.header.stamp = ros::Time::now();
            feedback_.current_charge += charge_rate;
            
            as_.publishFeedback(feedback_);
            r.sleep();
        }
        if (success)
        {
            result_.header.stamp = ros::Time::now();
            result_.charged = true;
            
            ROS_INFO("%s: Succeeded", action_name_.c_str());
            as_.setSucceeded(result_);
        }
    }
};
int main(int argc, char **argv)
{
    ros::init(argc, argv, "charging_server");
    ChargingAction charger("charger");
    ros::spin();
    return 0;
}