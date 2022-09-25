
(cl:in-package :asdf)

(defsystem "pkg_nav-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
)
  :components ((:file "_package")
    (:file "global_path" :depends-on ("_package_global_path"))
    (:file "_package_global_path" :depends-on ("_package"))
  ))