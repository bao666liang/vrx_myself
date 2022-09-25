
(cl:in-package :asdf)

(defsystem "vrx_gazebo-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "BallShooter" :depends-on ("_package_BallShooter"))
    (:file "_package_BallShooter" :depends-on ("_package"))
    (:file "ColorSequence" :depends-on ("_package_ColorSequence"))
    (:file "_package_ColorSequence" :depends-on ("_package"))
  ))