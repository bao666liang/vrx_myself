; Auto-generated. Do not edit!


(cl:in-package pkg_nav-srv)


;//! \htmlinclude global_path-request.msg.html

(cl:defclass <global_path-request> (roslisp-msg-protocol:ros-message)
  ((num
    :reader num
    :initarg :num
    :type cl:integer
    :initform 0)
   (start_pose
    :reader start_pose
    :initarg :start_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (goal_pose
    :reader goal_pose
    :initarg :goal_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass global_path-request (<global_path-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <global_path-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'global_path-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pkg_nav-srv:<global_path-request> is deprecated: use pkg_nav-srv:global_path-request instead.")))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <global_path-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_nav-srv:num-val is deprecated.  Use pkg_nav-srv:num instead.")
  (num m))

(cl:ensure-generic-function 'start_pose-val :lambda-list '(m))
(cl:defmethod start_pose-val ((m <global_path-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_nav-srv:start_pose-val is deprecated.  Use pkg_nav-srv:start_pose instead.")
  (start_pose m))

(cl:ensure-generic-function 'goal_pose-val :lambda-list '(m))
(cl:defmethod goal_pose-val ((m <global_path-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_nav-srv:goal_pose-val is deprecated.  Use pkg_nav-srv:goal_pose instead.")
  (goal_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <global_path-request>) ostream)
  "Serializes a message object of type '<global_path-request>"
  (cl:let* ((signed (cl:slot-value msg 'num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <global_path-request>) istream)
  "Deserializes a message object of type '<global_path-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<global_path-request>)))
  "Returns string type for a service object of type '<global_path-request>"
  "pkg_nav/global_pathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'global_path-request)))
  "Returns string type for a service object of type 'global_path-request"
  "pkg_nav/global_pathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<global_path-request>)))
  "Returns md5sum for a message object of type '<global_path-request>"
  "ba39a456f802a4a81c4d35cdebddff8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'global_path-request)))
  "Returns md5sum for a message object of type 'global_path-request"
  "ba39a456f802a4a81c4d35cdebddff8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<global_path-request>)))
  "Returns full string definition for message of type '<global_path-request>"
  (cl:format cl:nil "# 客户端请求时发送的两个数字~%# Define the goal~%int32 num # cyb-test  累加~%~%geometry_msgs/PoseStamped start_pose~%geometry_msgs/PoseStamped goal_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'global_path-request)))
  "Returns full string definition for message of type 'global_path-request"
  (cl:format cl:nil "# 客户端请求时发送的两个数字~%# Define the goal~%int32 num # cyb-test  累加~%~%geometry_msgs/PoseStamped start_pose~%geometry_msgs/PoseStamped goal_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <global_path-request>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <global_path-request>))
  "Converts a ROS message object to a list"
  (cl:list 'global_path-request
    (cl:cons ':num (num msg))
    (cl:cons ':start_pose (start_pose msg))
    (cl:cons ':goal_pose (goal_pose msg))
))
;//! \htmlinclude global_path-response.msg.html

(cl:defclass <global_path-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0)
   (global_path
    :reader global_path
    :initarg :global_path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path)))
)

(cl:defclass global_path-response (<global_path-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <global_path-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'global_path-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pkg_nav-srv:<global_path-response> is deprecated: use pkg_nav-srv:global_path-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <global_path-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_nav-srv:sum-val is deprecated.  Use pkg_nav-srv:sum instead.")
  (sum m))

(cl:ensure-generic-function 'global_path-val :lambda-list '(m))
(cl:defmethod global_path-val ((m <global_path-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_nav-srv:global_path-val is deprecated.  Use pkg_nav-srv:global_path instead.")
  (global_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <global_path-response>) ostream)
  "Serializes a message object of type '<global_path-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'global_path) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <global_path-response>) istream)
  "Deserializes a message object of type '<global_path-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'global_path) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<global_path-response>)))
  "Returns string type for a service object of type '<global_path-response>"
  "pkg_nav/global_pathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'global_path-response)))
  "Returns string type for a service object of type 'global_path-response"
  "pkg_nav/global_pathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<global_path-response>)))
  "Returns md5sum for a message object of type '<global_path-response>"
  "ba39a456f802a4a81c4d35cdebddff8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'global_path-response)))
  "Returns md5sum for a message object of type 'global_path-response"
  "ba39a456f802a4a81c4d35cdebddff8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<global_path-response>)))
  "Returns full string definition for message of type '<global_path-response>"
  (cl:format cl:nil "# 服务器响应发送的数据~%int32 sum ~%nav_msgs/Path global_path  ~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'global_path-response)))
  "Returns full string definition for message of type 'global_path-response"
  (cl:format cl:nil "# 服务器响应发送的数据~%int32 sum ~%nav_msgs/Path global_path  ~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <global_path-response>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'global_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <global_path-response>))
  "Converts a ROS message object to a list"
  (cl:list 'global_path-response
    (cl:cons ':sum (sum msg))
    (cl:cons ':global_path (global_path msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'global_path)))
  'global_path-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'global_path)))
  'global_path-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'global_path)))
  "Returns string type for a service object of type '<global_path>"
  "pkg_nav/global_path")