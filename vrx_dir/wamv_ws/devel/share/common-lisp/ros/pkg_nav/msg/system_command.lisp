; Auto-generated. Do not edit!


(cl:in-package pkg_nav-msg)


;//! \htmlinclude system_command.msg.html

(cl:defclass <system_command> (roslisp-msg-protocol:ros-message)
  ((num
    :reader num
    :initarg :num
    :type cl:fixnum
    :initform 0)
   (runCommand
    :reader runCommand
    :initarg :runCommand
    :type cl:fixnum
    :initform 0)
   (runResult
    :reader runResult
    :initarg :runResult
    :type cl:fixnum
    :initform 0)
   (result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (percent_complete
    :reader percent_complete
    :initarg :percent_complete
    :type cl:float
    :initform 0.0)
   (runState
    :reader runState
    :initarg :runState
    :type cl:fixnum
    :initform 0))
)

(cl:defclass system_command (<system_command>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <system_command>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'system_command)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pkg_nav-msg:<system_command> is deprecated: use pkg_nav-msg:system_command instead.")))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <system_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_nav-msg:num-val is deprecated.  Use pkg_nav-msg:num instead.")
  (num m))

(cl:ensure-generic-function 'runCommand-val :lambda-list '(m))
(cl:defmethod runCommand-val ((m <system_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_nav-msg:runCommand-val is deprecated.  Use pkg_nav-msg:runCommand instead.")
  (runCommand m))

(cl:ensure-generic-function 'runResult-val :lambda-list '(m))
(cl:defmethod runResult-val ((m <system_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_nav-msg:runResult-val is deprecated.  Use pkg_nav-msg:runResult instead.")
  (runResult m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <system_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_nav-msg:result-val is deprecated.  Use pkg_nav-msg:result instead.")
  (result m))

(cl:ensure-generic-function 'percent_complete-val :lambda-list '(m))
(cl:defmethod percent_complete-val ((m <system_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_nav-msg:percent_complete-val is deprecated.  Use pkg_nav-msg:percent_complete instead.")
  (percent_complete m))

(cl:ensure-generic-function 'runState-val :lambda-list '(m))
(cl:defmethod runState-val ((m <system_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_nav-msg:runState-val is deprecated.  Use pkg_nav-msg:runState instead.")
  (runState m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <system_command>) ostream)
  "Serializes a message object of type '<system_command>"
  (cl:let* ((signed (cl:slot-value msg 'num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'runCommand)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'runResult)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'percent_complete))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'runState)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <system_command>) istream)
  "Deserializes a message object of type '<system_command>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'runCommand) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'runResult) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'percent_complete) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'runState) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<system_command>)))
  "Returns string type for a message object of type '<system_command>"
  "pkg_nav/system_command")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'system_command)))
  "Returns string type for a message object of type 'system_command"
  "pkg_nav/system_command")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<system_command>)))
  "Returns md5sum for a message object of type '<system_command>"
  "c7aa14445a81b855618c21fd7dfb6225")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'system_command)))
  "Returns md5sum for a message object of type 'system_command"
  "c7aa14445a81b855618c21fd7dfb6225")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<system_command>)))
  "Returns full string definition for message of type '<system_command>"
  (cl:format cl:nil "# Define the goal~%# nav_msgs/Path local_path  ~%int8 num  #test -cyb~%int8 runCommand~%~%# ---~%# Define the result~%int8  runResult  # #  -1：处理失败  0 : 未处理     1：正在处理   2：处理完成  ~%int32 result #test -cyb~%~%# ---~%# Define a feedback message ~%float64 percent_complete  # [0-100]   处理进度 ~%int8    runState  #  -1：处理失败  0 : 未处理     1：正在处理   2：处理完成 ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'system_command)))
  "Returns full string definition for message of type 'system_command"
  (cl:format cl:nil "# Define the goal~%# nav_msgs/Path local_path  ~%int8 num  #test -cyb~%int8 runCommand~%~%# ---~%# Define the result~%int8  runResult  # #  -1：处理失败  0 : 未处理     1：正在处理   2：处理完成  ~%int32 result #test -cyb~%~%# ---~%# Define a feedback message ~%float64 percent_complete  # [0-100]   处理进度 ~%int8    runState  #  -1：处理失败  0 : 未处理     1：正在处理   2：处理完成 ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <system_command>))
  (cl:+ 0
     1
     1
     1
     4
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <system_command>))
  "Converts a ROS message object to a list"
  (cl:list 'system_command
    (cl:cons ':num (num msg))
    (cl:cons ':runCommand (runCommand msg))
    (cl:cons ':runResult (runResult msg))
    (cl:cons ':result (result msg))
    (cl:cons ':percent_complete (percent_complete msg))
    (cl:cons ':runState (runState msg))
))
