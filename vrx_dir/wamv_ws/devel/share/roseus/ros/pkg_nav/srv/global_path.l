;; Auto-generated. Do not edit!


(when (boundp 'pkg_nav::global_path)
  (if (not (find-package "PKG_NAV"))
    (make-package "PKG_NAV"))
  (shadow 'global_path (find-package "PKG_NAV")))
(unless (find-package "PKG_NAV::GLOBAL_PATH")
  (make-package "PKG_NAV::GLOBAL_PATH"))
(unless (find-package "PKG_NAV::GLOBAL_PATHREQUEST")
  (make-package "PKG_NAV::GLOBAL_PATHREQUEST"))
(unless (find-package "PKG_NAV::GLOBAL_PATHRESPONSE")
  (make-package "PKG_NAV::GLOBAL_PATHRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass pkg_nav::global_pathRequest
  :super ros::object
  :slots (_num _start_pose _goal_pose ))

(defmethod pkg_nav::global_pathRequest
  (:init
   (&key
    ((:num __num) 0)
    ((:start_pose __start_pose) (instance geometry_msgs::PoseStamped :init))
    ((:goal_pose __goal_pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _num (round __num))
   (setq _start_pose __start_pose)
   (setq _goal_pose __goal_pose)
   self)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:start_pose
   (&rest __start_pose)
   (if (keywordp (car __start_pose))
       (send* _start_pose __start_pose)
     (progn
       (if __start_pose (setq _start_pose (car __start_pose)))
       _start_pose)))
  (:goal_pose
   (&rest __goal_pose)
   (if (keywordp (car __goal_pose))
       (send* _goal_pose __goal_pose)
     (progn
       (if __goal_pose (setq _goal_pose (car __goal_pose)))
       _goal_pose)))
  (:serialization-length
   ()
   (+
    ;; int32 _num
    4
    ;; geometry_msgs/PoseStamped _start_pose
    (send _start_pose :serialization-length)
    ;; geometry_msgs/PoseStamped _goal_pose
    (send _goal_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num
       (write-long _num s)
     ;; geometry_msgs/PoseStamped _start_pose
       (send _start_pose :serialize s)
     ;; geometry_msgs/PoseStamped _goal_pose
       (send _goal_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num
     (setq _num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/PoseStamped _start_pose
     (send _start_pose :deserialize buf ptr-) (incf ptr- (send _start_pose :serialization-length))
   ;; geometry_msgs/PoseStamped _goal_pose
     (send _goal_pose :deserialize buf ptr-) (incf ptr- (send _goal_pose :serialization-length))
   ;;
   self)
  )

(defclass pkg_nav::global_pathResponse
  :super ros::object
  :slots (_sum _global_path ))

(defmethod pkg_nav::global_pathResponse
  (:init
   (&key
    ((:sum __sum) 0)
    ((:global_path __global_path) (instance nav_msgs::Path :init))
    )
   (send-super :init)
   (setq _sum (round __sum))
   (setq _global_path __global_path)
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:global_path
   (&rest __global_path)
   (if (keywordp (car __global_path))
       (send* _global_path __global_path)
     (progn
       (if __global_path (setq _global_path (car __global_path)))
       _global_path)))
  (:serialization-length
   ()
   (+
    ;; int32 _sum
    4
    ;; nav_msgs/Path _global_path
    (send _global_path :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sum
       (write-long _sum s)
     ;; nav_msgs/Path _global_path
       (send _global_path :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sum
     (setq _sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; nav_msgs/Path _global_path
     (send _global_path :deserialize buf ptr-) (incf ptr- (send _global_path :serialization-length))
   ;;
   self)
  )

(defclass pkg_nav::global_path
  :super ros::object
  :slots ())

(setf (get pkg_nav::global_path :md5sum-) "ba39a456f802a4a81c4d35cdebddff8d")
(setf (get pkg_nav::global_path :datatype-) "pkg_nav/global_path")
(setf (get pkg_nav::global_path :request) pkg_nav::global_pathRequest)
(setf (get pkg_nav::global_path :response) pkg_nav::global_pathResponse)

(defmethod pkg_nav::global_pathRequest
  (:response () (instance pkg_nav::global_pathResponse :init)))

(setf (get pkg_nav::global_pathRequest :md5sum-) "ba39a456f802a4a81c4d35cdebddff8d")
(setf (get pkg_nav::global_pathRequest :datatype-) "pkg_nav/global_pathRequest")
(setf (get pkg_nav::global_pathRequest :definition-)
      "# 客户端请求时发送的两个数字
# Define the goal
int32 num # cyb-test  累加

geometry_msgs/PoseStamped start_pose
geometry_msgs/PoseStamped goal_pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
# 服务器响应发送的数据
int32 sum 
nav_msgs/Path global_path  

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get pkg_nav::global_pathResponse :md5sum-) "ba39a456f802a4a81c4d35cdebddff8d")
(setf (get pkg_nav::global_pathResponse :datatype-) "pkg_nav/global_pathResponse")
(setf (get pkg_nav::global_pathResponse :definition-)
      "# 客户端请求时发送的两个数字
# Define the goal
int32 num # cyb-test  累加

geometry_msgs/PoseStamped start_pose
geometry_msgs/PoseStamped goal_pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
# 服务器响应发送的数据
int32 sum 
nav_msgs/Path global_path  

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :pkg_nav/global_path "ba39a456f802a4a81c4d35cdebddff8d")


