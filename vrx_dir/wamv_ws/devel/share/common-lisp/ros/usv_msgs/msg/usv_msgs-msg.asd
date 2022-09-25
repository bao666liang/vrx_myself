
(cl:in-package :asdf)

(defsystem "usv_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "RangeBearing" :depends-on ("_package_RangeBearing"))
    (:file "_package_RangeBearing" :depends-on ("_package"))
  ))