#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <nav_msgs/Odometry.h>
#include <std_msgs/Float32.h>
#include "control_wamv/pid_wamv.hpp"
#include <math.h>
#include <stdio.h>


/*
/wamv/thrusters/lateral_thrust_angle
/wamv/thrusters/lateral_thrust_cmd
/wamv/thrusters/left_thrust_angle
/wamv/thrusters/left_thrust_cmd
/wamv/thrusters/right_thrust_angle
/wamv/thrusters/right_thrust_cmd
 */

geometry_msgs::Twist des_vel;
nav_msgs::Odometry actu_vel;
std_msgs::Float32 left__thrust;
std_msgs::Float32 right_thrust;
std_msgs::Float32 left_angle;
std_msgs::Float32 right_angle;
std_msgs::Float32 lateral__thrust;

double kp,kd,ut_vx,ut_vy,ut_wz;

void desire_back(const geometry_msgs::Twist &desire_vel)
{
    des_vel = desire_vel;
}

void actual_back(const nav_msgs::Odometry &actual_vel)
{
    actu_vel = actual_vel;
}


int main(int argc, char* argv[])
{
    setlocale(LC_ALL,"");
    if(argc!=7)  ROS_INFO("请输入kp_vx,kd_vx,kp_wz,kd_wz,kp_vy,kd_vy");

    ros::init(argc,argv,"control_pid",ros::init_options::AnonymousName);
    ros::NodeHandle nh;
    // subscribe<这里写上数据类型会报错？？？>
    ros::Subscriber sub_desire = nh.subscribe("/smooth_cmd_vel",10,desire_back);
    ros::Subscriber sub_actual = nh.subscribe("/odom",10,actual_back);
    
    ros::Publisher pub_left_thrust = nh.advertise<std_msgs::Float32>("/wamv/thrusters/left_thrust_cmd",10);
    ros::Publisher pub_right_thrust = nh.advertise<std_msgs::Float32>("/wamv/thrusters/right_thrust_cmd",10);
    ros::Publisher pub_left_angle = nh.advertise<std_msgs::Float32>("/wamv/thrusters/left_thrust_angle",10);
    ros::Publisher pub_right_angle = nh.advertise<std_msgs::Float32>("/wamv/thrusters/right_thrust_angle",10);
    
    ros::Publisher pub_lateral_thrust = nh.advertise<std_msgs::Float32>("/wamv/thrusters/lateral_thrust_cmd",10);
    
    ros::Rate r(50); 
    while (ros::ok)
    {
        control::pid_wamv pid;
        // right_thrust.data = des_vel.angular.z + des_vel.linear.x;
        // left__thrust.data = des_vel.linear.x - des_vel.angular.z;

        // liner.x
        ut_vx = pid.pid_control(des_vel.linear.x,actu_vel.twist.twist.linear.x,atof(argv[1]),atof(argv[2]));
        // ut_vx = fabs(ut_vx);
        if(ut_vx>=1) ut_vx =1;
        if(ut_vx<=0) ut_vx = 0; //高于预期速度，减速，也可以直接取绝对值
        left__thrust.data = 1;
        right_thrust.data = 1;  //直接给定值。。。得想办法控制住liner.y，少让他左右荡
        
        // angle.z
        ut_wz = pid.pid_control(des_vel.angular.z,actu_vel.twist.twist.angular.z,atof(argv[3]),atof(argv[4]));
        // printf("输入的控制参数为%s %s %s %s\n",argv[1],argv[2],argv[3],argv[4]);
        // ut_wz = fabs(ut_wz);
        // if(des_vel.angular.z>0) ut_wz = -ut_wz;// 在船左边，转弯弧度不一定,

        // 假设前进速度恒定，则浆的每个角度都对应一个角速度，设角速度右转限为2.5，左角限为-2.5  ，最大转过1.47弧度(90度)
        if(ut_wz>=2.0)  ut_wz = 2.0; // 达到这个角度，用pid，不是转过多少！！！！
        if(ut_wz<=-2.0) ut_wz = -2.0;
       
        left_angle.data = -ut_wz;
        right_angle.data = -ut_wz;

        // liner.y
        ut_vy = pid.pid_control(des_vel.linear.y,actu_vel.twist.twist.linear.y,atof(argv[5]),atof(argv[6]));
        if(ut_vy>=1)  ut_vy = 1;
        if(ut_vy<=-1) ut_vy = -1;
        lateral__thrust.data = ut_vy;// lateral_force -1->1 初始朝右
        // 开环，liner.y使船一直荡
        // left_angle.data = -des_vel.angular.z;
        // right_angle.data = -des_vel.angular.z;
        // left__thrust.data = des_vel.linear.x/2.5;
        // right_thrust.data = des_vel.linear.x/2.5;
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