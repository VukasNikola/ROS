#include "ros/ros.h"
#include <sstream>
#include <apriltag_ros/AprilTagDetectionArray.h>
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
#include <sensor_msgs/CameraInfo.h>
#include <opencv2/opencv.hpp>

ros::Subscriber* cam_subPtr;
tf2_ros::TransformBroadcaster *brPtr;
tf2_ros::Buffer *tfBufferPtr;
std::vector<geometry_msgs::Point> points;
sensor_msgs::CameraInfo cam_info_msg;
double fx;
double fy;
double cx;
double cy;
int u;
int v;


void cameraInfoCallback(const sensor_msgs::CameraInfoConstPtr& msg)
{
    cam_info_msg = *msg;
    fx = cam_info_msg.K[0];
    fy = cam_info_msg.K[4];
    cx = cam_info_msg.K[2];
    cy = cam_info_msg.K[5];
    ROS_INFO("Info is: %f,%f,%f,%f,",fx,fy,cx,cy);
    cam_subPtr->shutdown();
}

void detectionCallback(const apriltag_ros::AprilTagDetectionArray::ConstPtr &msg)
{

    geometry_msgs::Point point;
    geometry_msgs::Point sum;
    geometry_msgs::Point average;

    point.x = msg->detections[0].pose.pose.pose.position.x;
    point.y = msg->detections[0].pose.pose.pose.position.y;
    point.z = msg->detections[0].pose.pose.pose.position.z;

    points.push_back(point);


    sum.x = 0;
    sum.y = 0;
    sum.z = 0;

    average.x = 0;
    average.y = 0;
    average.z = 0;

    for(auto& point : points){
        sum.x += point.x;
        sum.y += point.y;
        sum.z += point.z;
    };
    
    average.x = sum.x/points.size();
    average.y = sum.y/points.size();
    average.z = sum.z/points.size();
    
    
    u = static_cast<int>((average.x / average.z) * fx + cx);
    v = static_cast<int>((average.y / average.z) * fy + cy);
    // cv::circle(image, cv::Point(u, v), 5, cv::Scalar(0, 0, 255), -1);


    ROS_INFO("Average is : %f, %f, %f", average.x, average.y, average.z);

}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "cv_tag");
    ros::NodeHandle nh;

    static tf2_ros::TransformBroadcaster br;
    tf2_ros::Buffer tfBuffer(ros::Duration(30.0));
    tf2_ros::TransformListener tfListener(tfBuffer);

    brPtr = &br;
    tfBufferPtr = &tfBuffer;
    points.clear();
    
    ros::Subscriber sub = nh.subscribe("tag_detections", 1000, detectionCallback);
    ros::Subscriber cam_info_sub = nh.subscribe("/kinect/rgb/camera_info", 1, cameraInfoCallback);
    cam_subPtr = &cam_info_sub;

    ros::spin();

    return 0;
}