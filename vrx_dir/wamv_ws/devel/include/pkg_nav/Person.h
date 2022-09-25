// Generated by gencpp from file pkg_nav/Person.msg
// DO NOT EDIT!


#ifndef PKG_NAV_MESSAGE_PERSON_H
#define PKG_NAV_MESSAGE_PERSON_H


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
struct Person_
{
  typedef Person_<ContainerAllocator> Type;

  Person_()
    : name()
    , age(0)
    , height(0.0)  {
    }
  Person_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , age(0)
    , height(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef uint16_t _age_type;
  _age_type age;

   typedef double _height_type;
  _height_type height;





  typedef boost::shared_ptr< ::pkg_nav::Person_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pkg_nav::Person_<ContainerAllocator> const> ConstPtr;

}; // struct Person_

typedef ::pkg_nav::Person_<std::allocator<void> > Person;

typedef boost::shared_ptr< ::pkg_nav::Person > PersonPtr;
typedef boost::shared_ptr< ::pkg_nav::Person const> PersonConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pkg_nav::Person_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pkg_nav::Person_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pkg_nav::Person_<ContainerAllocator1> & lhs, const ::pkg_nav::Person_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.age == rhs.age &&
    lhs.height == rhs.height;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pkg_nav::Person_<ContainerAllocator1> & lhs, const ::pkg_nav::Person_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pkg_nav

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pkg_nav::Person_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pkg_nav::Person_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pkg_nav::Person_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pkg_nav::Person_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pkg_nav::Person_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pkg_nav::Person_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pkg_nav::Person_<ContainerAllocator> >
{
  static const char* value()
  {
    return "81ccf2097ef38ca6466e5a60ea1f8e49";
  }

  static const char* value(const ::pkg_nav::Person_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x81ccf2097ef38ca6ULL;
  static const uint64_t static_value2 = 0x466e5a60ea1f8e49ULL;
};

template<class ContainerAllocator>
struct DataType< ::pkg_nav::Person_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pkg_nav/Person";
  }

  static const char* value(const ::pkg_nav::Person_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pkg_nav::Person_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
"uint16 age\n"
"float64 height\n"
"# uint64_t	time_us	#	utc时间\n"
"# float64	longitude	#	经度\n"
"# double	latitude	#	纬度\n"
"# double	altitude	#	海拔高度\n"
"# double	roll	#	翻滚角\n"
"# double	pitch	#	俯仰角\n"
"# double	yaw	#	偏航角\n"
"# vector <unsigned int>	error_info	#	节点的故障数据等，可扩展\n"
;
  }

  static const char* value(const ::pkg_nav::Person_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pkg_nav::Person_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.age);
      stream.next(m.height);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Person_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pkg_nav::Person_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pkg_nav::Person_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "age: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.age);
    s << indent << "height: ";
    Printer<double>::stream(s, indent + "  ", v.height);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PKG_NAV_MESSAGE_PERSON_H