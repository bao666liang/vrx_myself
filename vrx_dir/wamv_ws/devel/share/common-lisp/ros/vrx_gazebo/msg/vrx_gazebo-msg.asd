
(cl:in-package :asdf)

(defsystem "vrx_gazebo-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Contact" :depends-on ("_package_Contact"))
    (:file "_package_Contact" :depends-on ("_package"))
    (:file "Task" :depends-on ("_package_Task"))
    (:file "_package_Task" :depends-on ("_package"))
  ))