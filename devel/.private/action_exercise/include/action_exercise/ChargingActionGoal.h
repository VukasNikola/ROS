// Generated by gencpp from file action_exercise/ChargingActionGoal.msg
// DO NOT EDIT!


#ifndef ACTION_EXERCISE_MESSAGE_CHARGINGACTIONGOAL_H
#define ACTION_EXERCISE_MESSAGE_CHARGINGACTIONGOAL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <action_exercise/ChargingGoal.h>

namespace action_exercise
{
template <class ContainerAllocator>
struct ChargingActionGoal_
{
  typedef ChargingActionGoal_<ContainerAllocator> Type;

  ChargingActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  ChargingActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::action_exercise::ChargingGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::action_exercise::ChargingActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::action_exercise::ChargingActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct ChargingActionGoal_

typedef ::action_exercise::ChargingActionGoal_<std::allocator<void> > ChargingActionGoal;

typedef boost::shared_ptr< ::action_exercise::ChargingActionGoal > ChargingActionGoalPtr;
typedef boost::shared_ptr< ::action_exercise::ChargingActionGoal const> ChargingActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::action_exercise::ChargingActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::action_exercise::ChargingActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::action_exercise::ChargingActionGoal_<ContainerAllocator1> & lhs, const ::action_exercise::ChargingActionGoal_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.goal_id == rhs.goal_id &&
    lhs.goal == rhs.goal;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::action_exercise::ChargingActionGoal_<ContainerAllocator1> & lhs, const ::action_exercise::ChargingActionGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace action_exercise

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::action_exercise::ChargingActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::action_exercise::ChargingActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::action_exercise::ChargingActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::action_exercise::ChargingActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::action_exercise::ChargingActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::action_exercise::ChargingActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::action_exercise::ChargingActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1bd9ae5255dc272095f5b851af1d49a9";
  }

  static const char* value(const ::action_exercise::ChargingActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1bd9ae5255dc2720ULL;
  static const uint64_t static_value2 = 0x95f5b851af1d49a9ULL;
};

template<class ContainerAllocator>
struct DataType< ::action_exercise::ChargingActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "action_exercise/ChargingActionGoal";
  }

  static const char* value(const ::action_exercise::ChargingActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::action_exercise::ChargingActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"ChargingGoal goal\n"
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
"MSG: action_exercise/ChargingGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#goal definition\n"
"std_msgs/Header header\n"
"float32 goal_charge\n"
;
  }

  static const char* value(const ::action_exercise::ChargingActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::action_exercise::ChargingActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ChargingActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::action_exercise::ChargingActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::action_exercise::ChargingActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::action_exercise::ChargingGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACTION_EXERCISE_MESSAGE_CHARGINGACTIONGOAL_H
