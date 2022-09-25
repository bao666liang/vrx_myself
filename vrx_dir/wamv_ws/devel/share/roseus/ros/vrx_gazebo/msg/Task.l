;; Auto-generated. Do not edit!


(when (boundp 'vrx_gazebo::Task)
  (if (not (find-package "VRX_GAZEBO"))
    (make-package "VRX_GAZEBO"))
  (shadow 'Task (find-package "VRX_GAZEBO")))
(unless (find-package "VRX_GAZEBO::TASK")
  (make-package "VRX_GAZEBO::TASK"))

(in-package "ROS")
;;//! \htmlinclude Task.msg.html


(defclass vrx_gazebo::Task
  :super ros::object
  :slots (_name _state _ready_time _running_time _elapsed_time _remaining_time _timed_out _num_collisions _score ))

(defmethod vrx_gazebo::Task
  (:init
   (&key
    ((:name __name) "")
    ((:state __state) "")
    ((:ready_time __ready_time) (instance ros::time :init))
    ((:running_time __running_time) (instance ros::time :init))
    ((:elapsed_time __elapsed_time) (instance ros::time :init))
    ((:remaining_time __remaining_time) (instance ros::time :init))
    ((:timed_out __timed_out) nil)
    ((:num_collisions __num_collisions) 0)
    ((:score __score) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _state (string __state))
   (setq _ready_time __ready_time)
   (setq _running_time __running_time)
   (setq _elapsed_time __elapsed_time)
   (setq _remaining_time __remaining_time)
   (setq _timed_out __timed_out)
   (setq _num_collisions (round __num_collisions))
   (setq _score (float __score))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:ready_time
   (&optional __ready_time)
   (if __ready_time (setq _ready_time __ready_time)) _ready_time)
  (:running_time
   (&optional __running_time)
   (if __running_time (setq _running_time __running_time)) _running_time)
  (:elapsed_time
   (&optional __elapsed_time)
   (if __elapsed_time (setq _elapsed_time __elapsed_time)) _elapsed_time)
  (:remaining_time
   (&optional __remaining_time)
   (if __remaining_time (setq _remaining_time __remaining_time)) _remaining_time)
  (:timed_out
   (&optional (__timed_out :null))
   (if (not (eq __timed_out :null)) (setq _timed_out __timed_out)) _timed_out)
  (:num_collisions
   (&optional __num_collisions)
   (if __num_collisions (setq _num_collisions __num_collisions)) _num_collisions)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _state
    4 (length _state)
    ;; time _ready_time
    8
    ;; time _running_time
    8
    ;; duration _elapsed_time
    8
    ;; duration _remaining_time
    8
    ;; bool _timed_out
    1
    ;; uint32 _num_collisions
    4
    ;; float64 _score
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; time _ready_time
       (write-long (send _ready_time :sec) s) (write-long (send _ready_time :nsec) s)
     ;; time _running_time
       (write-long (send _running_time :sec) s) (write-long (send _running_time :nsec) s)
     ;; duration _elapsed_time
       (write-long (send _elapsed_time :sec) s) (write-long (send _elapsed_time :nsec) s)
     ;; duration _remaining_time
       (write-long (send _remaining_time :sec) s) (write-long (send _remaining_time :nsec) s)
     ;; bool _timed_out
       (if _timed_out (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _num_collisions
       (write-long _num_collisions s)
     ;; float64 _score
       (sys::poke _score (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; time _ready_time
     (send _ready_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _ready_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _running_time
     (send _running_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _running_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; duration _elapsed_time
     (send _elapsed_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _elapsed_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; duration _remaining_time
     (send _remaining_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _remaining_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _timed_out
     (setq _timed_out (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _num_collisions
     (setq _num_collisions (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _score
     (setq _score (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get vrx_gazebo::Task :md5sum-) "8b3267cadc02a4d8846adeb79baa09a1")
(setf (get vrx_gazebo::Task :datatype-) "vrx_gazebo/Task")
(setf (get vrx_gazebo::Task :definition-)
      "# Task name.
string name

# Task state.
string state

# Absolute sim time when this task will be in \"ready\" state (ROS time).
time ready_time

# Absolute sim time when this task will be in \"running\" state (ROS time).
time running_time

# Time elapsed since task started (ROS time). This is the current sim time
# minus start time.
# When the elapsed time reaches the task timeout, `timed_out` is set to true.
duration elapsed_time

# Remaining time until the task times out (ROS time).
duration remaining_time

# True if task timed out.
bool timed_out

# Number of collisions.
uint32 num_collisions

# The score.
float64 score

")



(provide :vrx_gazebo/Task "8b3267cadc02a4d8846adeb79baa09a1")


