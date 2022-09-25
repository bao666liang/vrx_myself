
(cl:in-package :asdf)

(defsystem "control_wamv-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "vel" :depends-on ("_package_vel"))
    (:file "_package_vel" :depends-on ("_package"))
  ))