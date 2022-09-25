#include <cmath>
#include <gazebo_msgs/ModelStates.h>
#include <ros/ros.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Bool.h>
#include <std_msgs/Int16.h>
#include <nav_msgs/Odometry.h>
#include <tf/transform_listener.h>
#include <nav_msgs/Path.h>



std_msgs::Bool Move_flag;  
nav_msgs::Odometry g_Odometry;
nav_msgs::Path loaclPath;  
float base_link_x,base_link_y,base_link_z;
float theta; 
float PrepointAngle;


void caculateMoveCmd(); 
ros::Publisher ThrustAngleCmd_pub; 

struct POINT
{
    float  x;    
    float  y;
};
int count = 0;
float Pid_Control(float LosAngle,float theta)
{
    float  Err = (LosAngle - theta);
    static float ErrRate = 0;
    static float ErrLastTime = 0;
    if(Err< -180)
    {
        Err = Err + 360;
    }
    if(Err > 180)
    {
        Err = Err - 360;
    }

    if(count%10 == 0)
    {       
	    ErrRate = (Err - ErrLastTime)*5;
	    ErrLastTime = Err;
    }
    count++;
    float Angle =-(0.035*Err+0.023*ErrRate);
    return Angle;
}

void simulationCmdPub(ros::Publisher pub,float cmdangle)
{
    geometry_msgs::Twist twist; // 不必自定义消息，改个话题名调用Twist即可

    if (Move_flag.data )
    {
        twist.linear.x = 1;
    }
    else
    {   
        twist.linear.x = 0;
    }

    twist.angular.z = cmdangle;    
    if(twist.angular.z>1)
    {
        twist.angular.z = 1;
    }   
    if(twist.angular.z < -1)
    {
        twist.angular.z = -1;
    }   
    ROS_INFO("发布控制指令");
    pub.publish(twist);
}





void odomCallback(const nav_msgs::Odometry &currentOdom)
{
    g_Odometry = currentOdom;
}


/*
 将局部路径数据解析
*/
void pathCallback(const nav_msgs::Path &path)
{
    loaclPath = path;
     int pathLength = loaclPath.poses.size();
    ROS_INFO("接收到局部路径，长度为%d",pathLength);
    Move_flag.data = true; //保证在不规划时不控制
}



/*
计算theta角
*/
float caculateTheta()
{
 
    tf::Quaternion quat;
    base_link_x=g_Odometry.pose.pose.position.x;
    base_link_y=g_Odometry.pose.pose.position.y;
    base_link_z=g_Odometry.pose.pose.position.z;

    quat.setW(g_Odometry.pose.pose.orientation.w);
    quat.setX(g_Odometry.pose.pose.orientation.x);
    quat.setY(g_Odometry.pose.pose.orientation.y);
    quat.setZ(g_Odometry.pose.pose.orientation.z);
    double roll, pitch, yaw;
    tf::Matrix3x3(quat).getRPY(roll, pitch, yaw);
    float m_theta = (yaw/3.1415926)*180; // 度->弧度
    // ROS_INFO("m_theta = %f",m_theta);
    return m_theta;
}




/*
计算当前时刻以后的摸个时刻的轨迹角度与现在角度之差
*/
float ChangeAngleCal(float x ,float y,int pathLength)         
{
    float MinLength = 100000;   //最小距离初始化
    float Length;
    int MinIndex = 0;           //最小距离的点的序号
    float xx;
    float yy;
//////////////////////////计算规划轨迹上离车辆当前位置最近的点和距离///////////////////
    for(int i = 0;i < pathLength - 5;i++)
    {
        xx = loaclPath.poses[i].pose.position.x;
        yy = loaclPath.poses[i].pose.position.y;
        Length = pow((x - xx)*(x - xx) + (y - yy)*(y - yy),0.5);
        if(Length < MinLength)
        {
            MinIndex = i;
            MinLength = Length;
        }
    }
    int predictIndex = 0;
    float sundistance = 0;
    for(int j= MinIndex;j < pathLength - 3;j++)
    {
        float x1,x2,y1,y2;
        x1 = loaclPath.poses[j].pose.position.x;
        y1 = loaclPath.poses[j].pose.position.y;
        x2 = loaclPath.poses[j+1].pose.position.x;
        y2 = loaclPath.poses[j+1].pose.position.y;
        Length = pow((x2 - x1)*(x2 - x1) + (y2 - y1)*(y2 - y1),0.5);
        sundistance += Length;
        if(sundistance > 5)
        {
            predictIndex = j+1;
            break;
        }
    }
    POINT m_Vector;
    m_Vector.x = loaclPath.poses[predictIndex].pose.position.x - x;
    m_Vector.y = loaclPath.poses[predictIndex].pose.position.y - y;
    float angle;
    angle = atan2(m_Vector.y,m_Vector.x);
    angle = (angle/3.1415926)*180;
    return angle;
}


void caculateMoveCmd()     
{
    if(Move_flag.data)
    {
        int pathLength = loaclPath.poses.size();
        theta = caculateTheta(); 
        PrepointAngle = ChangeAngleCal(base_link_x ,base_link_y,pathLength) ;
        float Angle = Pid_Control(PrepointAngle,theta); 
        // geometry_msgs::Twist twist;
        // twist.angular.z = Angle;
        // twist.linear.x = 1;
        // ThrustAngleCmd_pub.publish(twist);
        simulationCmdPub(ThrustAngleCmd_pub,Angle);
    }

}

int main(int argc, char *argv[])
{  
    setlocale(LC_ALL,"");  //中文输出
    ros::init(argc, argv, "controller_node");
    Move_flag.data = false;
    ros::NodeHandle node_handle;
    ros::Subscriber odom_sub = node_handle.subscribe("odom", 10, odomCallback);  
    ros::Subscriber localPath_sub = node_handle.subscribe("/move_base/TrajectoryPlannerROS/local_plan", 10, pathCallback);  //接收move_base局部路径
    // ros::Subscriber localPath_sub = node_handle.subscribe("/move_base/TrajectoryPlannerROS/global_plan", 10, pathCallback);  //接收move_base全局路径
    ThrustAngleCmd_pub = node_handle.advertise<geometry_msgs::Twist>("vel",10, true);  
    ros::Rate loop_rate(50);
    while (ros::ok())
    {
        caculateMoveCmd();
        
        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0;
}

