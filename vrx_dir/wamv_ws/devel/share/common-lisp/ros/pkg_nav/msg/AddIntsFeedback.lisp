; Auto-generated. Do not edit!


(cl:in-package pkg_nav-msg)


;//! \htmlinclude AddIntsFeedback.msg.html

(cl:defclass <AddIntsFeedback> (roslisp-msg-protocol:ros-message)
  ((progress_bar
    :reader progress_bar
    :initarg :progress_bar
    :type cl:float
    :initform 0.0))
)

(cl:defclass AddIntsFeedback (<AddIntsFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddIntsFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddIntsFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pkg_nav-msg:<AddIntsFeedback> is deprecated: use pkg_nav-msg:AddIntsFeedback instead.")))

(cl:ensure-generic-function 'progress_bar-val :lambda-list '(m))
(cl:defmethod progress_bar-val ((m <AddIntsFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_nav-msg:progress_bar-val is deprecated.  Use pkg_nav-msg:progress_bar instead.")
  (progress_bar m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddIntsFeedback>) ostream)
  "Serializes a message object of type '<AddIntsFeedback>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'progress_bar))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddIntsFeedback>) istream)
  "Deserializes a message object of type '<AddIntsFeedback>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'progress_bar) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddIntsFeedback>)))
  "Returns string type for a message object of type '<AddIntsFeedback>"
  "pkg_nav/AddIntsFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddIntsFeedback)))
  "Returns string type for a message object of type 'AddIntsFeedback"
  "pkg_nav/AddIntsFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddIntsFeedback>)))
  "Returns md5sum for a message object of type '<AddIntsFeedback>"
  "ac7532a8a8f0d2be4f5284d94fee2d59")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddIntsFeedback)))
  "Returns md5sum for a message object of type 'AddIntsFeedback"
  "ac7532a8a8f0d2be4f5284d94fee2d59")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddIntsFeedback>)))
  "Returns full string definition for message of type '<AddIntsFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message ~%float64 progress_bar~%~%# goal：任务目标~%# cancel：请求取消任务~%~%# status：通知client当前的状态~%# feedback：周期反馈任务运行的监控数据~%# result：向client发送任务的执行结果，这个topic只会发布一次。~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddIntsFeedback)))
  "Returns full string definition for message of type 'AddIntsFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message ~%float64 progress_bar~%~%# goal：任务目标~%# cancel：请求取消任务~%~%# status：通知client当前的状态~%# feedback：周期反馈任务运行的监控数据~%# result：向client发送任务的执行结果，这个topic只会发布一次。~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddIntsFeedback>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddIntsFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'AddIntsFeedback
    (cl:cons ':progress_bar (progress_bar msg))
))