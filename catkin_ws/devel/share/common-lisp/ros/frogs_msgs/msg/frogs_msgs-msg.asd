
(cl:in-package :asdf)

(defsystem "frogs_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "robot_armAction" :depends-on ("_package_robot_armAction"))
    (:file "_package_robot_armAction" :depends-on ("_package"))
    (:file "robot_armActionFeedback" :depends-on ("_package_robot_armActionFeedback"))
    (:file "_package_robot_armActionFeedback" :depends-on ("_package"))
    (:file "robot_armActionGoal" :depends-on ("_package_robot_armActionGoal"))
    (:file "_package_robot_armActionGoal" :depends-on ("_package"))
    (:file "robot_armActionResult" :depends-on ("_package_robot_armActionResult"))
    (:file "_package_robot_armActionResult" :depends-on ("_package"))
    (:file "robot_armFeedback" :depends-on ("_package_robot_armFeedback"))
    (:file "_package_robot_armFeedback" :depends-on ("_package"))
    (:file "robot_armGoal" :depends-on ("_package_robot_armGoal"))
    (:file "_package_robot_armGoal" :depends-on ("_package"))
    (:file "robot_armResult" :depends-on ("_package_robot_armResult"))
    (:file "_package_robot_armResult" :depends-on ("_package"))
  ))