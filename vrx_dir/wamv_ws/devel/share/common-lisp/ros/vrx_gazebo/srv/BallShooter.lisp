; Auto-generated. Do not edit!


(cl:in-package vrx_gazebo-srv)


;//! \htmlinclude BallShooter-request.msg.html

(cl:defclass <BallShooter-request> (roslisp-msg-protocol:ros-message)
  ((shoot
    :reader shoot
    :initarg :shoot
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BallShooter-request (<BallShooter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BallShooter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BallShooter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrx_gazebo-srv:<BallShooter-request> is deprecated: use vrx_gazebo-srv:BallShooter-request instead.")))

(cl:ensure-generic-function 'shoot-val :lambda-list '(m))
(cl:defmethod shoot-val ((m <BallShooter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrx_gazebo-srv:shoot-val is deprecated.  Use vrx_gazebo-srv:shoot instead.")
  (shoot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BallShooter-request>) ostream)
  "Serializes a message object of type '<BallShooter-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'shoot) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BallShooter-request>) istream)
  "Deserializes a message object of type '<BallShooter-request>"
    (cl:setf (cl:slot-value msg 'shoot) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BallShooter-request>)))
  "Returns string type for a service object of type '<BallShooter-request>"
  "vrx_gazebo/BallShooterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BallShooter-request)))
  "Returns string type for a service object of type 'BallShooter-request"
  "vrx_gazebo/BallShooterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BallShooter-request>)))
  "Returns md5sum for a message object of type '<BallShooter-request>"
  "e8e12124716653af3165b82608274851")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BallShooter-request)))
  "Returns md5sum for a message object of type 'BallShooter-request"
  "e8e12124716653af3165b82608274851")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BallShooter-request>)))
  "Returns full string definition for message of type '<BallShooter-request>"
  (cl:format cl:nil "# Ball shooter service~%~%bool shoot~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BallShooter-request)))
  "Returns full string definition for message of type 'BallShooter-request"
  (cl:format cl:nil "# Ball shooter service~%~%bool shoot~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BallShooter-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BallShooter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BallShooter-request
    (cl:cons ':shoot (shoot msg))
))
;//! \htmlinclude BallShooter-response.msg.html

(cl:defclass <BallShooter-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BallShooter-response (<BallShooter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BallShooter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BallShooter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrx_gazebo-srv:<BallShooter-response> is deprecated: use vrx_gazebo-srv:BallShooter-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <BallShooter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrx_gazebo-srv:success-val is deprecated.  Use vrx_gazebo-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BallShooter-response>) ostream)
  "Serializes a message object of type '<BallShooter-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BallShooter-response>) istream)
  "Deserializes a message object of type '<BallShooter-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BallShooter-response>)))
  "Returns string type for a service object of type '<BallShooter-response>"
  "vrx_gazebo/BallShooterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BallShooter-response)))
  "Returns string type for a service object of type 'BallShooter-response"
  "vrx_gazebo/BallShooterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BallShooter-response>)))
  "Returns md5sum for a message object of type '<BallShooter-response>"
  "e8e12124716653af3165b82608274851")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BallShooter-response)))
  "Returns md5sum for a message object of type 'BallShooter-response"
  "e8e12124716653af3165b82608274851")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BallShooter-response>)))
  "Returns full string definition for message of type '<BallShooter-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BallShooter-response)))
  "Returns full string definition for message of type 'BallShooter-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BallShooter-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BallShooter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BallShooter-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BallShooter)))
  'BallShooter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BallShooter)))
  'BallShooter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BallShooter)))
  "Returns string type for a service object of type '<BallShooter>"
  "vrx_gazebo/BallShooter")