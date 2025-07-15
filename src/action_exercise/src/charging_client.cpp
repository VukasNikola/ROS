#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>
#include <action_exercise/ChargingAction.h>


void charge_level(const action_exercise::ChargingFeedbackConstPtr& feedback){

    ROS_INFO("Current charge: %.2f", feedback->current_charge);
    
};




int main(int argc, char **argv)
{
    ros::init(argc, argv, "charging_client");
    actionlib::SimpleActionClient<action_exercise::ChargingAction> ac("charger", true);
    ROS_INFO("Waiting for action server to start.");
    ac.waitForServer(); // will wait for infinite time
    ROS_INFO("Action server started, sending goal.");
    action_exercise::ChargingGoal goal;
    goal.goal_charge = 87.7;
    ac.sendGoal(goal,actionlib::SimpleActionClient<action_exercise::ChargingAction>::SimpleDoneCallback(), 
                actionlib::SimpleActionClient<action_exercise::ChargingAction>::SimpleActiveCallback(), 
                &charge_level);
    bool finished_before_timeout = ac.waitForResult(ros::Duration(65.0));
    if (finished_before_timeout)
    {
        actionlib::SimpleClientGoalState state = ac.getState();
        ROS_INFO("Action finished: %s", state.toString().c_str());
    }
    else
        ROS_INFO("Action did not finish before the time out.");
    return 0;
}