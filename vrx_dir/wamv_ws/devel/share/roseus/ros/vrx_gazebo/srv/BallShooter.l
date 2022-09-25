;; Auto-generated. Do not edit!


(when (boundp 'vrx_gazebo::BallShooter)
  (if (not (find-package "VRX_GAZEBO"))
    (make-package "VRX_GAZEBO"))
  (shadow 'BallShooter (find-package "VRX_GAZEBO")))
(unless (find-package "VRX_GAZEBO::BALLSHOOTER")
  (make-package "VRX_GAZEBO::BALLSHOOTER"))
(unless (find-package "VRX_GAZEBO::BALLSHOOTERREQUEST")
  (make-package "VRX_GAZEBO::BALLSHOOTERREQUEST"))
(unless (find-package "VRX_GAZEBO::BALLSHOOTERRESPONSE")
  (make-package "VRX_GAZEBO::BALLSHOOTERRESPONSE"))

(in-package "ROS")





(defclass vrx_gazebo::BallShooterRequest
  :super ros::object
  :slots (_shoot ))

(defmethod vrx_gazebo::BallShooterRequest
  (:init
   (&key
    ((:shoot __shoot) nil)
    )
   (send-super :init)
   (setq _shoot __shoot)
   self)
  (:shoot
   (&optional (__shoot :null))
   (if (not (eq __shoot :null)) (setq _shoot __shoot)) _shoot)
  (:serialization-length
   ()
   (+
    ;; bool _shoot
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _shoot
       (if _shoot (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _shoot
     (setq _shoot (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass vrx_gazebo::BallShooterResponse
  :super ros::object
  :slots (_success ))

(defmethod vrx_gazebo::BallShooterResponse
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

(defclass vrx_gazebo::BallShooter
  :super ros::object
  :slots ())

(setf (get vrx_gazebo::BallShooter :md5sum-) "e8e12124716653af3165b82608274851")
(setf (get vrx_gazebo::BallShooter :datatype-) "vrx_gazebo/BallShooter")
(setf (get vrx_gazebo::BallShooter :request) vrx_gazebo::BallShooterRequest)
(setf (get vrx_gazebo::BallShooter :response) vrx_gazebo::BallShooterResponse)

(defmethod vrx_gazebo::BallShooterRequest
  (:response () (instance vrx_gazebo::BallShooterResponse :init)))

(setf (get vrx_gazebo::BallShooterRequest :md5sum-) "e8e12124716653af3165b82608274851")
(setf (get vrx_gazebo::BallShooterRequest :datatype-) "vrx_gazebo/BallShooterRequest")
(setf (get vrx_gazebo::BallShooterRequest :definition-)
      "# Ball shooter service

bool shoot
---
bool success
")

(setf (get vrx_gazebo::BallShooterResponse :md5sum-) "e8e12124716653af3165b82608274851")
(setf (get vrx_gazebo::BallShooterResponse :datatype-) "vrx_gazebo/BallShooterResponse")
(setf (get vrx_gazebo::BallShooterResponse :definition-)
      "# Ball shooter service

bool shoot
---
bool success
")



(provide :vrx_gazebo/BallShooter "e8e12124716653af3165b82608274851")


