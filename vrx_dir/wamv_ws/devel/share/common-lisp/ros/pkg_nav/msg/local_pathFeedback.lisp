; Auto-generated. Do not edit!


(cl:in-package pkg_nav-msg)


;//! \htmlinclude local_pathFeedback.msg.html

(cl:defclass <local_pathFeedback> (roslisp-msg-protocol:ros-message)
  ((percent_complete
    :reader percent_complete
    :initarg :percent_complete
    :type cl:float
    :initform 0.0)
   (runState
    :reader runState
    :initarg :runState
    :type cl:fixnum
    :initform 0)
   (progress_bar
    :reader progress_bar
    :initarg :progress_bar
    :type cl:float
    :initform 0.0))
)

(cl:defclass local_pathFeedback (<local_pathFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <local_pathFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'local_pathFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pkg_nav-msg:<local_pathFeedback> is deprecated: use pkg_nav-msg:local_pathFeedback instead.")))

(cl:ensure-generic-function 'percent_complete-val :lambda-list '(m))
(cl:defmethod percent_complete-val ((m <local_pathFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_nav-msg:percent_complete-val is deprecated.  Use pkg_nav-msg:percent_complete instead.")
  (percent_complete m))

(cl:ensure-generic-function 'runState-val :lambda-list '(m))
(cl:defmethod runState-val ((m <local_pathFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_nav-msg:runState-val is deprecated.  Use pkg_nav-msg:runState instead.")
  (runState m))

(cl:ensure-generic-function 'progress_bar-val :lambda-list '(m))
(cl:defmethod progress_bar-val ((m <local_pathFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_nav-msg:progress_bar-val is deprecated.  Use pkg_nav-msg:progress_bar instead.")
  (progress_bar m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <local_pathFeedback>) ostream)
  "Serializes a message object of type '<local_pathFeedback>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <local_pathFeedback>) istream)
  "Deserializes a message object of type '<local_pathFeedback>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<local_pathFeedback>)))
  "Returns string type for a message object of type '<local_pathFeedback>"
  "pkg_nav/local_pathFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'local_pathFeedback)))
  "Returns string type for a message object of type 'local_pathFeedback"
  "pkg_nav/local_pathFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<local_pathFeedback>)))
  "Returns md5sum for a message object of type '<local_pathFeedback>"
  "70d94d6334a1aed97d89bf9a2b40a965")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'local_pathFeedback)))
  "Returns md5sum for a message object of type 'local_pathFeedback"
  "70d94d6334a1aed97d89bf9a2b40a965")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<local_pathFeedback>)))
  "Returns full string definition for message of type '<local_pathFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message ~%float64 percent_complete  # [0-1]   ???????????? ~%int8    runState  #  -1???????????????  0 : ?????????     1???????????????   2???????????????   ~%~%float64 progress_bar  #test -cyb~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'local_pathFeedback)))
  "Returns full string definition for message of type 'local_pathFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message ~%float64 percent_complete  # [0-1]   ???????????? ~%int8    runState  #  -1???????????????  0 : ?????????     1???????????????   2???????????????   ~%~%float64 progress_bar  #test -cyb~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <local_pathFeedback>))
  (cl:+ 0
     8
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <local_pathFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'local_pathFeedback
    (cl:cons ':percent_complete (percent_complete msg))
    (cl:cons ':runState (runState msg))
    (cl:cons ':progress_bar (progress_bar msg))
))
