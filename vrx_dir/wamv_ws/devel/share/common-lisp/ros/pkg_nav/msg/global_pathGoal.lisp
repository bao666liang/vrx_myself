; Auto-generated. Do not edit!


(cl:in-package pkg_nav-msg)


;//! \htmlinclude global_pathGoal.msg.html

(cl:defclass <global_pathGoal> (roslisp-msg-protocol:ros-message)
  ((start_pose
    :reader start_pose
    :initarg :start_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (goal_pose
    :reader goal_pose
    :initarg :goal_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (goalPoseV1
    :reader goalPoseV1
    :initarg :goalPoseV1
    :type (cl:vector geometry_msgs-msg:PoseStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:PoseStamped :initial-element (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
   (num
    :reader num
    :initarg :num
    :type cl:integer
    :initform 0))
)

(cl:defclass global_pathGoal (<global_pathGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <global_pathGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'global_pathGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pkg_nav-msg:<global_pathGoal> is deprecated: use pkg_nav-msg:global_pathGoal instead.")))

(cl:ensure-generic-function 'start_pose-val :lambda-list '(m))
(cl:defmethod start_pose-val ((m <global_pathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_nav-msg:start_pose-val is deprecated.  Use pkg_nav-msg:start_pose instead.")
  (start_pose m))

(cl:ensure-generic-function 'goal_pose-val :lambda-list '(m))
(cl:defmethod goal_pose-val ((m <global_pathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_nav-msg:goal_pose-val is deprecated.  Use pkg_nav-msg:goal_pose instead.")
  (goal_pose m))

(cl:ensure-generic-function 'goalPoseV1-val :lambda-list '(m))
(cl:defmethod goalPoseV1-val ((m <global_pathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_nav-msg:goalPoseV1-val is deprecated.  Use pkg_nav-msg:goalPoseV1 instead.")
  (goalPoseV1 m))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <global_pathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_nav-msg:num-val is deprecated.  Use pkg_nav-msg:num instead.")
  (num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <global_pathGoal>) ostream)
  "Serializes a message object of type '<global_pathGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_pose) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goalPoseV1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'goalPoseV1))
  (cl:let* ((signed (cl:slot-value msg 'num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <global_pathGoal>) istream)
  "Deserializes a message object of type '<global_pathGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_pose) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'goalPoseV1) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goalPoseV1)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:PoseStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<global_pathGoal>)))
  "Returns string type for a message object of type '<global_pathGoal>"
  "pkg_nav/global_pathGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'global_pathGoal)))
  "Returns string type for a message object of type 'global_pathGoal"
  "pkg_nav/global_pathGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<global_pathGoal>)))
  "Returns md5sum for a message object of type '<global_pathGoal>"
  "aef87d3d36de5fcb43eef8fad3407a39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'global_pathGoal)))
  "Returns md5sum for a message object of type 'global_pathGoal"
  "aef87d3d36de5fcb43eef8fad3407a39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<global_pathGoal>)))
  "Returns full string definition for message of type '<global_pathGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%geometry_msgs/PoseStamped start_pose~%geometry_msgs/PoseStamped goal_pose~%geometry_msgs/PoseStamped[] goalPoseV1~%int32 num  #test -cyb~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'global_pathGoal)))
  "Returns full string definition for message of type 'global_pathGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%geometry_msgs/PoseStamped start_pose~%geometry_msgs/PoseStamped goal_pose~%geometry_msgs/PoseStamped[] goalPoseV1~%int32 num  #test -cyb~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <global_pathGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_pose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goalPoseV1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <global_pathGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'global_pathGoal
    (cl:cons ':start_pose (start_pose msg))
    (cl:cons ':goal_pose (goal_pose msg))
    (cl:cons ':goalPoseV1 (goalPoseV1 msg))
    (cl:cons ':num (num msg))
))
