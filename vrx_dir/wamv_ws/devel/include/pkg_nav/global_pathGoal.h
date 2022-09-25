// Generated by gencpp from file pkg_nav/global_pathGoal.msg
// DO NOT EDIT!


#ifndef PKG_NAV_MESSAGE_GLOBAL_PATHGOAL_H
#define PKG_NAV_MESSAGE_GLOBAL_PATHGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseStamped.h>

namespace pkg_nav
{
template <class ContainerAllocator>
struct global_pathGoal_
{
  typedef global_pathGoal_<ContainerAllocator> Type;

  global_pathGoal_()
    : start_pose()
    , goal_pose()
    , goalPoseV1()
    , num(0)  {
    }
  global_pathGoal_(const ContainerAllocator& _alloc)
    : start_pose(_alloc)
    , goal_pose(_alloc)
    , goalPoseV1(_alloc)
    , num(0)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _start_pose_type;
  _start_pose_type start_pose;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _goal_pose_type;
  _goal_pose_type goal_pose;

   typedef std::vector< ::geometry_msgs::PoseStamped_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::other >  _goalPoseV1_type;
  _goalPoseV1_type goalPoseV1;

   typedef int32_t _num_type;
  _num_type num;





  typedef boost::shared_ptr< ::pkg_nav::global_pathGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pkg_nav::global_pathGoal_<ContainerAllocator> const> ConstPtr;

}; // struct global_pathGoal_

typedef ::pkg_nav::global_pathGoal_<std::allocator<void> > global_pathGoal;

typedef boost::shared_ptr< ::pkg_nav::global_pathGoal > global_pathGoalPtr;
typedef boost::shared_ptr< ::pkg_nav::global_pathGoal const> global_pathGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pkg_nav::global_pathGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pkg_nav::global_pathGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pkg_nav::global_pathGoal_<ContainerAllocator1> & lhs, const ::pkg_nav::global_pathGoal_<ContainerAllocator2> & rhs)
{
  return lhs.start_pose == rhs.start_pose &&
    lhs.goal_pose == rhs.goal_pose &&
    lhs.goalPoseV1 == rhs.goalPoseV1 &&
    lhs.num == rhs.num;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pkg_nav::global_pathGoal_<ContainerAllocator1> & lhs, const ::pkg_nav::global_pathGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pkg_nav

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pkg_nav::global_pathGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pkg_nav::global_pathGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pkg_nav::global_pathGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pkg_nav::global_pathGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pkg_nav::global_pathGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pkg_nav::global_pathGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pkg_nav::global_pathGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aef87d3d36de5fcb43eef8fad3407a39";
  }

  static const char* value(const ::pkg_nav::global_pathGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xaef87d3d36de5fcbULL;
  static const uint64_t static_value2 = 0x43eef8fad3407a39ULL;
};

template<class ContainerAllocator>
struct DataType< ::pkg_nav::global_pathGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pkg_nav/global_pathGoal";
  }

  static const char* value(const ::pkg_nav::global_pathGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pkg_nav::global_pathGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define the goal\n"
"geometry_msgs/PoseStamped start_pose\n"
"geometry_msgs/PoseStamped goal_pose\n"
"geometry_msgs/PoseStamped[] goalPoseV1\n"
"int32 num  #test -cyb\n"
"\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::pkg_nav::global_pathGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pkg_nav::global_pathGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.start_pose);
      stream.next(m.goal_pose);
      stream.next(m.goalPoseV1);
      stream.next(m.num);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct global_pathGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pkg_nav::global_pathGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pkg_nav::global_pathGoal_<ContainerAllocator>& v)
  {
    s << indent << "start_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.start_pose);
    s << indent << "goal_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_pose);
    s << indent << "goalPoseV1[]" << std::endl;
    for (size_t i = 0; i < v.goalPoseV1.size(); ++i)
    {
      s << indent << "  goalPoseV1[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "    ", v.goalPoseV1[i]);
    }
    s << indent << "num: ";
    Printer<int32_t>::stream(s, indent + "  ", v.num);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PKG_NAV_MESSAGE_GLOBAL_PATHGOAL_H