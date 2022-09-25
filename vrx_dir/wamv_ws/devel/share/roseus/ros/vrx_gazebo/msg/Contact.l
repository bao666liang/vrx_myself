;; Auto-generated. Do not edit!


(when (boundp 'vrx_gazebo::Contact)
  (if (not (find-package "VRX_GAZEBO"))
    (make-package "VRX_GAZEBO"))
  (shadow 'Contact (find-package "VRX_GAZEBO")))
(unless (find-package "VRX_GAZEBO::CONTACT")
  (make-package "VRX_GAZEBO::CONTACT"))

(in-package "ROS")
;;//! \htmlinclude Contact.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vrx_gazebo::Contact
  :super ros::object
  :slots (_header _collision1 _collision2 ))

(defmethod vrx_gazebo::Contact
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:collision1 __collision1) "")
    ((:collision2 __collision2) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _collision1 (string __collision1))
   (setq _collision2 (string __collision2))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:collision1
   (&optional __collision1)
   (if __collision1 (setq _collision1 __collision1)) _collision1)
  (:collision2
   (&optional __collision2)
   (if __collision2 (setq _collision2 __collision2)) _collision2)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _collision1
    4 (length _collision1)
    ;; string _collision2
    4 (length _collision2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _collision1
       (write-long (length _collision1) s) (princ _collision1 s)
     ;; string _collision2
       (write-long (length _collision2) s) (princ _collision2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _collision1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _collision1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _collision2
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _collision2 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get vrx_gazebo::Contact :md5sum-) "fc95c38568039a66bfb95d0e976561b9")
(setf (get vrx_gazebo::Contact :datatype-) "vrx_gazebo/Contact")
(setf (get vrx_gazebo::Contact :definition-)
      "Header header
string collision1
string collision2


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

")



(provide :vrx_gazebo/Contact "fc95c38568039a66bfb95d0e976561b9")


