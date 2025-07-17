#include "ros/ros.h"
#include <sstream>
#include <apriltag_ros/AprilTagDetectionArray.h>
#include <tf2_ros/transform_listener.h>
#include <geometry_msgs/TransformStamped.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/PoseStamped.h>
#include <tf2/LinearMath/Quaternion.h>
#include <tf2_ros/transform_broadcaster.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
#include <string>
#include <message_filters/subscriber.h>
#include <tf2_ros/message_filter.h>
#include <boost/bind.hpp>


tf2_ros::TransformBroadcaster *brPtr;
tf2_ros::Buffer *tfBufferPtr;

void detectionCallback(const apriltag_ros::AprilTagDetectionArray::ConstPtr &msg)
{
    ROS_INFO("Called");
    for (const auto &tag : msg->detections)
    {
        geometry_msgs::PoseStamped base_to_tag;
        geometry_msgs::PoseStamped camera_to_tag;

        camera_to_tag.header = tag.pose.header;
        camera_to_tag.pose = tag.pose.pose.pose;

        tfBufferPtr->transform(camera_to_tag, base_to_tag, "base_link");

        geometry_msgs::TransformStamped transformStamped;

        transformStamped.header.stamp = ros::Time::now();
        transformStamped.header.frame_id = "base_link";
        transformStamped.child_frame_id = "tag_" + std::to_string(tag.id[0]);
        transformStamped.transform.translation.x = base_to_tag.pose.position.x;
        transformStamped.transform.translation.y = base_to_tag.pose.position.y;
        transformStamped.transform.translation.z = base_to_tag.pose.position.z;

        transformStamped.transform.rotation.x = base_to_tag.pose.orientation.x;
        transformStamped.transform.rotation.y = base_to_tag.pose.orientation.y;
        transformStamped.transform.rotation.z = base_to_tag.pose.orientation.z;
        transformStamped.transform.rotation.w = base_to_tag.pose.orientation.w;

        brPtr->sendTransform(transformStamped);
    };
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "tag_manipulation");
    ros::NodeHandle nh;

    static tf2_ros::TransformBroadcaster br;
    tf2_ros::Buffer tfBuffer;
    tf2_ros::TransformListener tfListener(tfBuffer);

    brPtr = &br;
    tfBufferPtr = &tfBuffer;

    message_filters::Subscriber<apriltag_ros::AprilTagDetectionArray> sub(nh, "tag_detections", 10);

    tf2_ros::MessageFilter<apriltag_ros::AprilTagDetectionArray> *mf;
    mf = new tf2_ros::MessageFilter<apriltag_ros::AprilTagDetectionArray>(sub, tfBuffer, "base_link", 10, nh);
    
    mf->registerCallback(boost::bind(&detectionCallback, _1));

    ros::spin();

    return 0;
}