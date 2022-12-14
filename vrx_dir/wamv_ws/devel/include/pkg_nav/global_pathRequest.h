// Generated by gencpp from file pkg_nav/global_pathRequest.msg
// DO NOT EDIT!


#ifndef PKG_NAV_MESSAGE_GLOBAL_PATHREQUEST_H
#define PKG_NAV_MESSAGE_GLOBAL_PATHREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseStamped.h>

namespace pkg_nav
{
template <class ContainerAllocator>
struct global_pathRequest_
{
  typedef global_pathRequest_<ContainerAllocator> Type;

  global_pathRequest_()
    : num(0)
    , start_pose()
    , goal_pose()  {
    }
  global_pathRequest_(const ContainerAllocator& _alloc)
    : num(0)
    , start_pose(_alloc)
    , goal_pose(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _num_type;
  _num_type num;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _start_pose_type;
  _start_pose_type start_pose;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _goal_pose_type;
  _goal_pose_type goal_pose;





  typedef boost::shared_ptr< ::pkg_nav::global_pathRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pkg_nav::global_pathRequest_<ContainerAllocator> const> ConstPtr;

}; // struct global_pathRequest_

typedef ::pkg_nav::global_pathRequest_<std::allocator<void> > global_pathRequest;

typedef boost::shared_ptr< ::pkg_nav::global_pathRequest > global_pathRequestPtr;
typedef boost::shared_ptr< ::pkg_nav::global_pathRequest const> global_pathRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pkg_nav::global_pathRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pkg_nav::global_pathRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pkg_nav::global_pathRequest_<ContainerAllocator1> & lhs, const ::pkg_nav::global_pathRequest_<ContainerAllocator2> & rhs)
{
  return lhs.num == rhs.num &&
    lhs.start_pose == rhs.start_pose &&
    lhs.goal_pose == rhs.goal_pose;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pkg_nav::global_pathRequest_<ContainerAllocator1> & lhs, const ::pkg_nav::global_pathRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pkg_nav

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pkg_nav::global_pathRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pkg_nav::global_pathRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pkg_nav::global_pathRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pkg_nav::global_pathRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pkg_nav::global_pathRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pkg_nav::global_pathRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pkg_nav::global_pathRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fa81af3759a6a7f3b889c1a8a75abeef";
  }

  static const char* value(const ::pkg_nav::global_pathRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfa81af3759a6a7f3ULL;
  static const uint64_t static_value2 = 0xb889c1a8a75abeefULL;
};

template<class ContainerAllocator>
struct DataType< ::pkg_nav::global_pathRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pkg_nav/global_pathRequest";
  }

  static const char* value(const ::pkg_nav::global_pathRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pkg_nav::global_pathRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ???????????????????????????????????????\n"
"# Define the goal\n"
"int32 num # cyb-test  ??????\n"
"\n"
"geometry_msgs/PoseStamped start_pose\n"
"geometry_msgs/PoseStamped goal_pose\n"
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

  static const char* value(const ::pkg_nav::global_pathRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pkg_nav::global_pathRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.num);
      stream.next(m.start_pose);
      stream.next(m.goal_pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct global_pathRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pkg_nav::global_pathRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pkg_nav::global_pathRequest_<ContainerAllocator>& v)
  {
    s << indent << "num: ";
    Printer<int32_t>::stream(s, indent + "  ", v.num);
    s << indent << "start_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.start_pose);
    s << indent << "goal_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PKG_NAV_MESSAGE_GLOBAL_PATHREQUEST_H
