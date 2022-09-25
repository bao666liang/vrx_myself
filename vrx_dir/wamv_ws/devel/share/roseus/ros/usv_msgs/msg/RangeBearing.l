;; Auto-generated. Do not edit!


(when (boundp 'usv_msgs::RangeBearing)
  (if (not (find-package "USV_MSGS"))
    (make-package "USV_MSGS"))
  (shadow 'RangeBearing (find-package "USV_MSGS")))
(unless (find-package "USV_MSGS::RANGEBEARING")
  (make-package "USV_MSGS::RANGEBEARING"))

(in-package "ROS")
;;//! \htmlinclude RangeBearing.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass usv_msgs::RangeBearing
  :super ros::object
  :slots (_header _range _bearing _elevation ))

(defmethod usv_msgs::RangeBearing
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:range __range) 0.0)
    ((:bearing __bearing) 0.0)
    ((:elevation __elevation) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _range (float __range))
   (setq _bearing (float __bearing))
   (setq _elevation (float __elevation))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:bearing
   (&optional __bearing)
   (if __bearing (setq _bearing __bearing)) _bearing)
  (:elevation
   (&optional __elevation)
   (if __elevation (setq _elevation __elevation)) _elevation)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _range
    4
    ;; float32 _bearing
    4
    ;; float32 _elevation
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _range
       (sys::poke _range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _bearing
       (sys::poke _bearing (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _elevation
       (sys::poke _elevation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _range
     (setq _range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _bearing
     (setq _bearing (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _elevation
     (setq _elevation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get usv_msgs::RangeBearing :md5sum-) "2d277afbbd042ab113d2e5714cad41ad")
(setf (get usv_msgs::RangeBearing :datatype-) "usv_msgs/RangeBearing")
(setf (get usv_msgs::RangeBearing :definition-)
      "std_msgs/Header header

float32 range
float32 bearing
float32 elevation

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



(provide :usv_msgs/RangeBearing "2d277afbbd042ab113d2e5714cad41ad")


