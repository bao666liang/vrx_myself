#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <nav_msgs/Odometry.h>
#include <std_msgs/Float32.h>
#include "control_wamv/pid_wamv.hpp"
#include <math.h>
#include <stdio.h>


/*
   vector3.setX(Double.NaN);
   vector3.setY(Double.NaN);
   vector3.setZ(Double.NaN);
*/

/*
/wamv/thrusters/lateral_thrust_angle
/wamv/thrusters/lateral_thrust_cmd
/wamv/thrusters/left_thrust_angle
/wamv/thrusters/left_thrust_cmd
/wamv/thrusters/right_thrust_angle
/wamv/thrusters/right_thrust_cmd
 */


geometry_msgs::Twist des_vel;


std_msgs::Float32 left__thrust;
std_msgs::Float32 right_thrust;
std_msgs::Float32 left_angle;
std_msgs::Float32 right_angle;
std_msgs::Float32 lateral__thrust;


void desire_back(const geometry_msgs::Twist &desire_vel)
{
    des_vel = desire_vel;
}


int main(int argc, char* argv[])
{
    setlocale(LC_ALL,"");
    

    ros::init(argc,argv,"vel_thrust",ros::init_options::AnonymousName);
    ros::NodeHandle nh;
    // subscribe<这里写上数据类型会报错？？？>
    ros::Subscriber sub_desire = nh.subscribe("vel",10,desire_back);
    
    ros::Publisher pub_left_thrust = nh.advertise<std_msgs::Float32>("/wamv/thrusters/left_thrust_cmd",10);
    ros::Publisher pub_right_thrust = nh.advertise<std_msgs::Float32>("/wamv/thrusters/right_thrust_cmd",10);
    ros::Publisher pub_left_angle = nh.advertise<std_msgs::Float32>("/wamv/thrusters/left_thrust_angle",10);
    ros::Publisher pub_right_angle = nh.advertise<std_msgs::Float32>("/wamv/thrusters/right_thrust_angle",10);
    
   
    
    ros::Rate r(50); 
    while (ros::ok)
    {
        left__thrust.data = des_vel.linear.x;
        right_thrust.data = des_vel.linear.x;
        left_angle.data = des_vel.angular.z;
        right_angle.data = des_vel.angular.z;
        pub_left_thrust.publish(left__thrust);
        pub_left_angle.publish(left_angle);
        pub_right_thrust.publish(right_thrust);
        pub_right_angle.publish(right_angle);

        // pub_lateral_thrust.publish(lateral__thrust);

        r.sleep(); 
        ros::spinOnce();
    }
    

    return 0;
}