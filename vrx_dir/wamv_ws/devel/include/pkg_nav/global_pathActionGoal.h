// Generated by gencpp from file pkg_nav/global_pathActionGoal.msg
// DO NOT EDIT!


#ifndef PKG_NAV_MESSAGE_GLOBAL_PATHACTIONGOAL_H
#define PKG_NAV_MESSAGE_GLOBAL_PATHACTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <pkg_nav/global_pathGoal.h>

namespace pkg_nav
{
template <class ContainerAllocator>
struct global_pathActionGoal_
{
  typedef global_pathActionGoal_<ContainerAllocator> Type;

  global_pathActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  global_pathActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::pkg_nav::global_pathGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::pkg_nav::global_pathActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pkg_nav::global_pathActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct global_pathActionGoal_

typedef ::pkg_nav::global_pathActionGoal_<std::allocator<void> > global_pathActionGoal;

typedef boost::shared_ptr< ::pkg_nav::global_pathActionGoal > global_pathActionGoalPtr;
typedef boost::shared_ptr< ::pkg_nav::global_pathActionGoal const> global_pathActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pkg_nav::global_pathActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pkg_nav::global_pathActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pkg_nav::global_pathActionGoal_<ContainerAllocator1> & lhs, const ::pkg_nav::global_pathActionGoal_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.goal_id == rhs.goal_id &&
    lhs.goal == rhs.goal;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pkg_nav::global_pathActionGoal_<ContainerAllocator1> & lhs, const ::pkg_nav::global_pathActionGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pkg_nav

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pkg_nav::global_pathActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pkg_nav::global_pathActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pkg_nav::global_pathActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pkg_nav::global_pathActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pkg_nav::global_pathActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pkg_nav::global_pathActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pkg_nav::global_pathActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1d7235d15f6bf164bb23d6cc8914ff62";
  }

  static const char* value(const ::pkg_nav::global_pathActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1d7235d15f6bf164ULL;
  static const uint64_t static_value2 = 0xbb23d6cc8914ff62ULL;
};

template<class ContainerAllocator>
struct DataType< ::pkg_nav::global_pathActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pkg_nav/global_pathActionGoal";
  }

  static const char* value(const ::pkg_nav::global_pathActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pkg_nav::global_pathActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"global_pathGoal goal\n"
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
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: pkg_nav/global_pathGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
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

  static const char* value(const ::pkg_nav::global_pathActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pkg_nav::global_pathActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct global_pathActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pkg_nav::global_pathActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pkg_nav::global_pathActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::pkg_nav::global_pathGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PKG_NAV_MESSAGE_GLOBAL_PATHACTIONGOAL_H
