// Generated by gencpp from file pkg_nav/AddIntsResult.msg
// DO NOT EDIT!


#ifndef PKG_NAV_MESSAGE_ADDINTSRESULT_H
#define PKG_NAV_MESSAGE_ADDINTSRESULT_H


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
struct AddIntsResult_
{
  typedef AddIntsResult_<ContainerAllocator> Type;

  AddIntsResult_()
    : result(0)  {
    }
  AddIntsResult_(const ContainerAllocator& _alloc)
    : result(0)  {
  (void)_alloc;
    }



   typedef int32_t _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::pkg_nav::AddIntsResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pkg_nav::AddIntsResult_<ContainerAllocator> const> ConstPtr;

}; // struct AddIntsResult_

typedef ::pkg_nav::AddIntsResult_<std::allocator<void> > AddIntsResult;

typedef boost::shared_ptr< ::pkg_nav::AddIntsResult > AddIntsResultPtr;
typedef boost::shared_ptr< ::pkg_nav::AddIntsResult const> AddIntsResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pkg_nav::AddIntsResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pkg_nav::AddIntsResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pkg_nav::AddIntsResult_<ContainerAllocator1> & lhs, const ::pkg_nav::AddIntsResult_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pkg_nav::AddIntsResult_<ContainerAllocator1> & lhs, const ::pkg_nav::AddIntsResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pkg_nav

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pkg_nav::AddIntsResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pkg_nav::AddIntsResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pkg_nav::AddIntsResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pkg_nav::AddIntsResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pkg_nav::AddIntsResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pkg_nav::AddIntsResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pkg_nav::AddIntsResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "034a8e20d6a306665e3a5b340fab3f09";
  }

  static const char* value(const ::pkg_nav::AddIntsResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x034a8e20d6a30666ULL;
  static const uint64_t static_value2 = 0x5e3a5b340fab3f09ULL;
};

template<class ContainerAllocator>
struct DataType< ::pkg_nav::AddIntsResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pkg_nav/AddIntsResult";
  }

  static const char* value(const ::pkg_nav::AddIntsResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pkg_nav::AddIntsResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define the result\n"
"int32 result\n"
;
  }

  static const char* value(const ::pkg_nav::AddIntsResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pkg_nav::AddIntsResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AddIntsResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pkg_nav::AddIntsResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pkg_nav::AddIntsResult_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<int32_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PKG_NAV_MESSAGE_ADDINTSRESULT_H
