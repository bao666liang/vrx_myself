;; Auto-generated. Do not edit!


(when (boundp 'pkg_nav::system_command)
  (if (not (find-package "PKG_NAV"))
    (make-package "PKG_NAV"))
  (shadow 'system_command (find-package "PKG_NAV")))
(unless (find-package "PKG_NAV::SYSTEM_COMMAND")
  (make-package "PKG_NAV::SYSTEM_COMMAND"))

(in-package "ROS")
;;//! \htmlinclude system_command.msg.html


(defclass pkg_nav::system_command
  :super ros::object
  :slots (_num _runCommand _runResult _result _percent_complete _runState ))

(defmethod pkg_nav::system_command
  (:init
   (&key
    ((:num __num) 0)
    ((:runCommand __runCommand) 0)
    ((:runResult __runResult) 0)
    ((:result __result) 0)
    ((:percent_complete __percent_complete) 0.0)
    ((:runState __runState) 0)
    )
   (send-super :init)
   (setq _num (round __num))
   (setq _runCommand (round __runCommand))
   (setq _runResult (round __runResult))
   (setq _result (round __result))
   (setq _percent_complete (float __percent_complete))
   (setq _runState (round __runState))
   self)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:runCommand
   (&optional __runCommand)
   (if __runCommand (setq _runCommand __runCommand)) _runCommand)
  (:runResult
   (&optional __runResult)
   (if __runResult (setq _runResult __runResult)) _runResult)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:percent_complete
   (&optional __percent_complete)
   (if __percent_complete (setq _percent_complete __percent_complete)) _percent_complete)
  (:runState
   (&optional __runState)
   (if __runState (setq _runState __runState)) _runState)
  (:serialization-length
   ()
   (+
    ;; int8 _num
    1
    ;; int8 _runCommand
    1
    ;; int8 _runResult
    1
    ;; int32 _result
    4
    ;; float64 _percent_complete
    8
    ;; int8 _runState
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _num
       (write-byte _num s)
     ;; int8 _runCommand
       (write-byte _runCommand s)
     ;; int8 _runResult
       (write-byte _runResult s)
     ;; int32 _result
       (write-long _result s)
     ;; float64 _percent_complete
       (sys::poke _percent_complete (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _runState
       (write-byte _runState s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _num
     (setq _num (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _num 127) (setq _num (- _num 256)))
   ;; int8 _runCommand
     (setq _runCommand (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _runCommand 127) (setq _runCommand (- _runCommand 256)))
   ;; int8 _runResult
     (setq _runResult (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _runResult 127) (setq _runResult (- _runResult 256)))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _percent_complete
     (setq _percent_complete (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _runState
     (setq _runState (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _runState 127) (setq _runState (- _runState 256)))
   ;;
   self)
  )

(setf (get pkg_nav::system_command :md5sum-) "c7aa14445a81b855618c21fd7dfb6225")
(setf (get pkg_nav::system_command :datatype-) "pkg_nav/system_command")
(setf (get pkg_nav::system_command :definition-)
      "# Define the goal
# nav_msgs/Path local_path  
int8 num  #test -cyb
int8 runCommand

# ---
# Define the result
int8  runResult  # #  -1：处理失败  0 : 未处理     1：正在处理   2：处理完成  
int32 result #test -cyb

# ---
# Define a feedback message 
float64 percent_complete  # [0-100]   处理进度 
int8    runState  #  -1：处理失败  0 : 未处理     1：正在处理   2：处理完成 

")



(provide :pkg_nav/system_command "c7aa14445a81b855618c21fd7dfb6225")


