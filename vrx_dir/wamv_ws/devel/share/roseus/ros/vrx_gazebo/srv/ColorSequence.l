;; Auto-generated. Do not edit!


(when (boundp 'vrx_gazebo::ColorSequence)
  (if (not (find-package "VRX_GAZEBO"))
    (make-package "VRX_GAZEBO"))
  (shadow 'ColorSequence (find-package "VRX_GAZEBO")))
(unless (find-package "VRX_GAZEBO::COLORSEQUENCE")
  (make-package "VRX_GAZEBO::COLORSEQUENCE"))
(unless (find-package "VRX_GAZEBO::COLORSEQUENCEREQUEST")
  (make-package "VRX_GAZEBO::COLORSEQUENCEREQUEST"))
(unless (find-package "VRX_GAZEBO::COLORSEQUENCERESPONSE")
  (make-package "VRX_GAZEBO::COLORSEQUENCERESPONSE"))

(in-package "ROS")





(defclass vrx_gazebo::ColorSequenceRequest
  :super ros::object
  :slots (_color1 _color2 _color3 ))

(defmethod vrx_gazebo::ColorSequenceRequest
  (:init
   (&key
    ((:color1 __color1) "")
    ((:color2 __color2) "")
    ((:color3 __color3) "")
    )
   (send-super :init)
   (setq _color1 (string __color1))
   (setq _color2 (string __color2))
   (setq _color3 (string __color3))
   self)
  (:color1
   (&optional __color1)
   (if __color1 (setq _color1 __color1)) _color1)
  (:color2
   (&optional __color2)
   (if __color2 (setq _color2 __color2)) _color2)
  (:color3
   (&optional __color3)
   (if __color3 (setq _color3 __color3)) _color3)
  (:serialization-length
   ()
   (+
    ;; string _color1
    4 (length _color1)
    ;; string _color2
    4 (length _color2)
    ;; string _color3
    4 (length _color3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _color1
       (write-long (length _color1) s) (princ _color1 s)
     ;; string _color2
       (write-long (length _color2) s) (princ _color2 s)
     ;; string _color3
       (write-long (length _color3) s) (princ _color3 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _color1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _color1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _color2
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _color2 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _color3
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _color3 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vrx_gazebo::ColorSequenceResponse
  :super ros::object
  :slots (_success ))

(defmethod vrx_gazebo::ColorSequenceResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass vrx_gazebo::ColorSequence
  :super ros::object
  :slots ())

(setf (get vrx_gazebo::ColorSequence :md5sum-) "3969b5fd7ff15f6de27340edae0cd056")
(setf (get vrx_gazebo::ColorSequence :datatype-) "vrx_gazebo/ColorSequence")
(setf (get vrx_gazebo::ColorSequence :request) vrx_gazebo::ColorSequenceRequest)
(setf (get vrx_gazebo::ColorSequence :response) vrx_gazebo::ColorSequenceResponse)

(defmethod vrx_gazebo::ColorSequenceRequest
  (:response () (instance vrx_gazebo::ColorSequenceResponse :init)))

(setf (get vrx_gazebo::ColorSequenceRequest :md5sum-) "3969b5fd7ff15f6de27340edae0cd056")
(setf (get vrx_gazebo::ColorSequenceRequest :datatype-) "vrx_gazebo/ColorSequenceRequest")
(setf (get vrx_gazebo::ColorSequenceRequest :definition-)
      "# Color sequence submission

# Color sequence
string color1
string color2
string color3

---
bool success

")

(setf (get vrx_gazebo::ColorSequenceResponse :md5sum-) "3969b5fd7ff15f6de27340edae0cd056")
(setf (get vrx_gazebo::ColorSequenceResponse :datatype-) "vrx_gazebo/ColorSequenceResponse")
(setf (get vrx_gazebo::ColorSequenceResponse :definition-)
      "# Color sequence submission

# Color sequence
string color1
string color2
string color3

---
bool success

")



(provide :vrx_gazebo/ColorSequence "3969b5fd7ff15f6de27340edae0cd056")


