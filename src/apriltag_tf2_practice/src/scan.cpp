#include "ros/ros.h"
#include <sstream>
#include <tf2_ros/transform_listener.h>
#include <geometry_msgs/TransformStamped.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/Point.h>
#include <tf2/LinearMath/Quaternion.h>
#include <tf2_ros/transform_broadcaster.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
#include <string>
#include <message_filters/subscriber.h>
#include <tf2_ros/message_filter.h>
#include <boost/bind.hpp>
#include <vector>
#include <sensor_msgs/LaserScan.h>
#include <cmath>
#include <sensor_msgs/PointCloud2.h>


void detectionCallback(const sensor_msgs::LaserScan::ConstPtr &msg)
{
    int i = 0;
    ROS_INFO("Min angle is: %f", msg->angle_min);
    // ROS_INFO("Max angle is: %f",msg->angle_max);

    for(auto& range : msg->ranges){
        if(!std::isinf(range)){
        
            float measurement_angle = msg->angle_min + i * msg->angle_increment;
            
            ROS_INFO("Range is %f, at angle %f",range, measurement_angle);
        }
        i++;
    }
}

void detectionCallback1(const sensor_msgs::PointCloud2::ConstPtr &msg)
{
    for(auto& point : msg->data){
        ROS_INFO("Point is %u", point);
    }
}


int main(int argc, char **argv)
{
    ros::init(argc, argv, "cv_tag");
    ros::NodeHandle nh;

    // ros::Subscriber sub = nh.subscribe("scan", 1000, detectionCallback);
    ros::Subscriber sub1 = nh.subscribe("cloud", 1000, detectionCallback1);

    ros::spin();

    return 0;
}