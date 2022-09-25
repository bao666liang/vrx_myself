// Generated by gencpp from file pkg_nav/AddIntsGoal.msg
// DO NOT EDIT!


#ifndef PKG_NAV_MESSAGE_ADDINTSGOAL_H
#define PKG_NAV_MESSAGE_ADDINTSGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pkg_nav
{
template <class ContainerAllocator>
struct AddIntsGoal_
{
  typedef AddIntsGoal_<ContainerAllocator> Type;

  AddIntsGoal_()
    : num(0)  {
    }
  AddIntsGoal_(const ContainerAllocator& _alloc)
    : num(0)  {
  (void)_alloc;
    }



   typedef int32_t _num_type;
  _num_type num;





  typedef boost::shared_ptr< ::pkg_nav::AddIntsGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pkg_nav::AddIntsGoal_<ContainerAllocator> const> ConstPtr;

}; // struct AddIntsGoal_

typedef ::pkg_nav::AddIntsGoal_<std::allocator<void> > AddIntsGoal;

typedef boost::shared_ptr< ::pkg_nav::AddIntsGoal > AddIntsGoalPtr;
typedef boost::shared_ptr< ::pkg_nav::AddIntsGoal const> AddIntsGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pkg_nav::AddIntsGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pkg_nav::AddIntsGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pkg_nav::AddIntsGoal_<ContainerAllocator1> & lhs, const ::pkg_nav::AddIntsGoal_<ContainerAllocator2> & rhs)
{
  return lhs.num == rhs.num;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pkg_nav::AddIntsGoal_<ContainerAllocator1> & lhs, const ::pkg_nav::AddIntsGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pkg_nav

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pkg_nav::AddIntsGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pkg_nav::AddIntsGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pkg_nav::AddIntsGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pkg_nav::AddIntsGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pkg_nav::AddIntsGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pkg_nav::AddIntsGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pkg_nav::AddIntsGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "54b3c80efd6fae6e6ffff8a4b9facd69";
  }

  static const char* value(const ::pkg_nav::AddIntsGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x54b3c80efd6fae6eULL;
  static const uint64_t static_value2 = 0x6ffff8a4b9facd69ULL;
};

template<class ContainerAllocator>
struct DataType< ::pkg_nav::AddIntsGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pkg_nav/AddIntsGoal";
  }

  static const char* value(const ::pkg_nav::AddIntsGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pkg_nav::AddIntsGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define the goal\n"
"int32 num\n"
;
  }

  static const char* value(const ::pkg_nav::AddIntsGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pkg_nav::AddIntsGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.num);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AddIntsGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pkg_nav::AddIntsGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pkg_nav::AddIntsGoal_<ContainerAllocator>& v)
  {
    s << indent << "num: ";
    Printer<int32_t>::stream(s, indent + "  ", v.num);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PKG_NAV_MESSAGE_ADDINTSGOAL_H
