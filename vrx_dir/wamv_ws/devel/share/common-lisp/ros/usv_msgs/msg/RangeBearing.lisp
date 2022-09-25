; Auto-generated. Do not edit!


(cl:in-package usv_msgs-msg)


;//! \htmlinclude RangeBearing.msg.html

(cl:defclass <RangeBearing> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (range
    :reader range
    :initarg :range
    :type cl:float
    :initform 0.0)
   (bearing
    :reader bearing
    :initarg :bearing
    :type cl:float
    :initform 0.0)
   (elevation
    :reader elevation
    :initarg :elevation
    :type cl:float
    :initform 0.0))
)

(cl:defclass RangeBearing (<RangeBearing>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RangeBearing>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RangeBearing)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name usv_msgs-msg:<RangeBearing> is deprecated: use usv_msgs-msg:RangeBearing instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RangeBearing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader usv_msgs-msg:header-val is deprecated.  Use usv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'range-val :lambda-list '(m))
(cl:defmethod range-val ((m <RangeBearing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader usv_msgs-msg:range-val is deprecated.  Use usv_msgs-msg:range instead.")
  (range m))

(cl:ensure-generic-function 'bearing-val :lambda-list '(m))
(cl:defmethod bearing-val ((m <RangeBearing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader usv_msgs-msg:bearing-val is deprecated.  Use usv_msgs-msg:bearing instead.")
  (bearing m))

(cl:ensure-generic-function 'elevation-val :lambda-list '(m))
(cl:defmethod elevation-val ((m <RangeBearing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader usv_msgs-msg:elevation-val is deprecated.  Use usv_msgs-msg:elevation instead.")
  (elevation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RangeBearing>) ostream)
  "Serializes a message object of type '<RangeBearing>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bearing))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'elevation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RangeBearing>) istream)
  "Deserializes a message object of type '<RangeBearing>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'range) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bearing) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'elevation) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RangeBearing>)))
  "Returns string type for a message object of type '<RangeBearing>"
  "usv_msgs/RangeBearing")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RangeBearing)))
  "Returns string type for a message object of type 'RangeBearing"
  "usv_msgs/RangeBearing")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RangeBearing>)))
  "Returns md5sum for a message object of type '<RangeBearing>"
  "2d277afbbd042ab113d2e5714cad41ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RangeBearing)))
  "Returns md5sum for a message object of type 'RangeBearing"
  "2d277afbbd042ab113d2e5714cad41ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RangeBearing>)))
  "Returns full string definition for message of type '<RangeBearing>"
  (cl:format cl:nil "std_msgs/Header header~%~%float32 range~%float32 bearing~%float32 elevation~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RangeBearing)))
  "Returns full string definition for message of type 'RangeBearing"
  (cl:format cl:nil "std_msgs/Header header~%~%float32 range~%float32 bearing~%float32 elevation~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RangeBearing>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RangeBearing>))
  "Converts a ROS message object to a list"
  (cl:list 'RangeBearing
    (cl:cons ':header (header msg))
    (cl:cons ':range (range msg))
    (cl:cons ':bearing (bearing msg))
    (cl:cons ':elevation (elevation msg))
))
