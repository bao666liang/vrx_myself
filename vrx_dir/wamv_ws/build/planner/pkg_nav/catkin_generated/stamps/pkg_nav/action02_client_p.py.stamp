#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
import actionlib
from pkg_nav.msg import *


"""
    需求:
        创建两个ROS 节点，服务器和客户端，
        客户端可以向服务器发送目标数据N(一个整型数据)服务器会计算 1 到 N 之间所有整数的和,
        这是一个循环累加的过程，返回给客户端，这是基于请求响应模式的，
        又已知服务器从接收到请求到产生响应是一个耗时操作，每累加一次耗时0.1s，
        为了良好的用户体验，需要服务器在计算过程中，
        每累加一次，就给客户端响应一次百分比格式的执行进度，使用 action实现。
    流程:
        1.导包
        2.初始化 ROS 节点
        3.创建 action Client 对象
        4.等待服务
        5.组织目标对象并发送
        6.编写回调, 激活、连续反馈、最终响应
        7.spin
"""

def done_cb(state,result):
    if state == actionlib.GoalStatus.SUCCEEDED:
        rospy.loginfo("响应结果:%d",result.result)
    else:
      rospy.logerr("响应结果处理失败 ！%d",state) 
      

def active_cb():
    rospy.loginfo("服务被激活....")


def feedback_cb(feedback):
    rospy.loginfo("当前进度:%.2f/100",feedback.progress_bar*100)

if __name__ == "__main__":
    # 2.初始化 ROS 节点
    rospy.init_node("action_client_p")
    # 3.创建 action Client 对象
    client = actionlib.SimpleActionClient("addInts",AddIntsAction)
    # 4.等待服务
    client.wait_for_server() 
#    bool    waitForResult (const ros::Duration &timeout=ros::Duration(0, 0))
#   bool    waitForServer (const ros::Duration &timeout=ros::Duration(0, 0)) const
    # 5.组织目标对象并发送
    goal_obj = AddIntsGoal()  #AddIntsActionGoal
    goal_obj.num = 10 #Header
    client.send_goal(goal_obj,done_cb,active_cb,feedback_cb)
    
    rate = rospy.Rate (1)
    a = 1
    while not rospy.is_shutdown() and  a == 2:
      rospy.loginfo("client.get_state() :%d",client.get_state()) 
      if client.get_state() == actionlib.GoalStatus.ACTIVE: #0
        rospy.loginfo("actionlib.GoalStatus.ACTIVE : %d",actionlib.GoalStatus.ACTIVE) 
        client.cancel_goal()
      if client.get_state() == actionlib.GoalStatus.SUCCEEDED: #3
        client.send_goal(goal_obj,done_cb,active_cb,feedback_cb)
        # client.cancel_goal()
      rate.sleep()
    
    # client.cancel_goal()
    # client.cancel_all_goals()
    # client.cancel_goals_at_and_before_time(rospy.Time().now())
    # 6.编写回调, 激活、连续反馈、最终响应
    # 7.spin
    rospy.spin()