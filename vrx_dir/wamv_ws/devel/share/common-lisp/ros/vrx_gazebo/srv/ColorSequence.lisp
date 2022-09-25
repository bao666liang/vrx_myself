; Auto-generated. Do not edit!


(cl:in-package vrx_gazebo-srv)


;//! \htmlinclude ColorSequence-request.msg.html

(cl:defclass <ColorSequence-request> (roslisp-msg-protocol:ros-message)
  ((color1
    :reader color1
    :initarg :color1
    :type cl:string
    :initform "")
   (color2
    :reader color2
    :initarg :color2
    :type cl:string
    :initform "")
   (color3
    :reader color3
    :initarg :color3
    :type cl:string
    :initform ""))
)

(cl:defclass ColorSequence-request (<ColorSequence-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ColorSequence-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ColorSequence-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrx_gazebo-srv:<ColorSequence-request> is deprecated: use vrx_gazebo-srv:ColorSequence-request instead.")))

(cl:ensure-generic-function 'color1-val :lambda-list '(m))
(cl:defmethod color1-val ((m <ColorSequence-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrx_gazebo-srv:color1-val is deprecated.  Use vrx_gazebo-srv:color1 instead.")
  (color1 m))

(cl:ensure-generic-function 'color2-val :lambda-list '(m))
(cl:defmethod color2-val ((m <ColorSequence-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrx_gazebo-srv:color2-val is deprecated.  Use vrx_gazebo-srv:color2 instead.")
  (color2 m))

(cl:ensure-generic-function 'color3-val :lambda-list '(m))
(cl:defmethod color3-val ((m <ColorSequence-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrx_gazebo-srv:color3-val is deprecated.  Use vrx_gazebo-srv:color3 instead.")
  (color3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ColorSequence-request>) ostream)
  "Serializes a message object of type '<ColorSequence-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'color1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'color1))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'color2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'color2))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'color3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'color3))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ColorSequence-request>) istream)
  "Deserializes a message object of type '<ColorSequence-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color1) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'color1) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color2) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'color2) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color3) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'color3) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ColorSequence-request>)))
  "Returns string type for a service object of type '<ColorSequence-request>"
  "vrx_gazebo/ColorSequenceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ColorSequence-request)))
  "Returns string type for a service object of type 'ColorSequence-request"
  "vrx_gazebo/ColorSequenceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ColorSequence-request>)))
  "Returns md5sum for a message object of type '<ColorSequence-request>"
  "3969b5fd7ff15f6de27340edae0cd056")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ColorSequence-request)))
  "Returns md5sum for a message object of type 'ColorSequence-request"
  "3969b5fd7ff15f6de27340edae0cd056")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ColorSequence-request>)))
  "Returns full string definition for message of type '<ColorSequence-request>"
  (cl:format cl:nil "# Color sequence submission~%~%# Color sequence~%string color1~%string color2~%string color3~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ColorSequence-request)))
  "Returns full string definition for message of type 'ColorSequence-request"
  (cl:format cl:nil "# Color sequence submission~%~%# Color sequence~%string color1~%string color2~%string color3~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ColorSequence-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'color1))
     4 (cl:length (cl:slot-value msg 'color2))
     4 (cl:length (cl:slot-value msg 'color3))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ColorSequence-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ColorSequence-request
    (cl:cons ':color1 (color1 msg))
    (cl:cons ':color2 (color2 msg))
    (cl:cons ':color3 (color3 msg))
))
;//! \htmlinclude ColorSequence-response.msg.html

(cl:defclass <ColorSequence-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ColorSequence-response (<ColorSequence-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ColorSequence-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ColorSequence-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrx_gazebo-srv:<ColorSequence-response> is deprecated: use vrx_gazebo-srv:ColorSequence-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ColorSequence-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrx_gazebo-srv:success-val is deprecated.  Use vrx_gazebo-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ColorSequence-response>) ostream)
  "Serializes a message object of type '<ColorSequence-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ColorSequence-response>) istream)
  "Deserializes a message object of type '<ColorSequence-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ColorSequence-response>)))
  "Returns string type for a service object of type '<ColorSequence-response>"
  "vrx_gazebo/ColorSequenceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ColorSequence-response)))
  "Returns string type for a service object of type 'ColorSequence-response"
  "vrx_gazebo/ColorSequenceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ColorSequence-response>)))
  "Returns md5sum for a message object of type '<ColorSequence-response>"
  "3969b5fd7ff15f6de27340edae0cd056")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ColorSequence-response)))
  "Returns md5sum for a message object of type 'ColorSequence-response"
  "3969b5fd7ff15f6de27340edae0cd056")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ColorSequence-response>)))
  "Returns full string definition for message of type '<ColorSequence-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ColorSequence-response)))
  "Returns full string definition for message of type 'ColorSequence-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ColorSequence-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ColorSequence-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ColorSequence-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ColorSequence)))
  'ColorSequence-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ColorSequence)))
  'ColorSequence-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ColorSequence)))
  "Returns string type for a service object of type '<ColorSequence>"
  "vrx_gazebo/ColorSequence")