; Auto-generated. Do not edit!


(cl:in-package pkg_nav-msg)


;//! \htmlinclude global_pathFeedback.msg.html

(cl:defclass <global_pathFeedback> (roslisp-msg-protocol:ros-message)
  ((percent_complete
    :reader percent_complete
    :initarg :percent_complete
    :type cl:float
    :initform 0.0)
   (progress_bar
    :reader progress_bar
    :initarg :progress_bar
    :type cl:float
    :initform 0.0))
)

(cl:defclass global_pathFeedback (<global_pathFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <global_pathFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'global_pathFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pkg_nav-msg:<global_pathFeedback> is deprecated: use pkg_nav-msg:global_pathFeedback instead.")))

(cl:ensure-generic-function 'percent_complete-val :lambda-list '(m))
(cl:defmethod percent_complete-val ((m <global_pathFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_nav-msg:percent_complete-val is deprecated.  Use pkg_nav-msg:percent_complete instead.")
  (percent_complete m))

(cl:ensure-generic-function 'progress_bar-val :lambda-list '(m))
(cl:defmethod progress_bar-val ((m <global_pathFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_nav-msg:progress_bar-val is deprecated.  Use pkg_nav-msg:progress_bar instead.")
  (progress_bar m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <global_pathFeedback>) ostream)
  "Serializes a message object of type '<global_pathFeedback>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'percent_complete))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <global_pathFeedback>) istream)
  "Deserializes a message object of type '<global_pathFeedback>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<global_pathFeedback>)))
  "Returns string type for a message object of type '<global_pathFeedback>"
  "pkg_nav/global_pathFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'global_pathFeedback)))
  "Returns string type for a message object of type 'global_pathFeedback"
  "pkg_nav/global_pathFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<global_pathFeedback>)))
  "Returns md5sum for a message object of type '<global_pathFeedback>"
  "4ae8417c8b17e91babe7a86363602f0d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'global_pathFeedback)))
  "Returns md5sum for a message object of type 'global_pathFeedback"
  "4ae8417c8b17e91babe7a86363602f0d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<global_pathFeedback>)))
  "Returns full string definition for message of type '<global_pathFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message ~%float64 percent_complete  # [0-1]   处理进度 ~%float64 progress_bar  #test -cyb~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'global_pathFeedback)))
  "Returns full string definition for message of type 'global_pathFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message ~%float64 percent_complete  # [0-1]   处理进度 ~%float64 progress_bar  #test -cyb~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <global_pathFeedback>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <global_pathFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'global_pathFeedback
    (cl:cons ':percent_complete (percent_complete msg))
    (cl:cons ':progress_bar (progress_bar msg))
))
