
(cl:in-package :asdf)

(defsystem "action_exercise-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ChargingAction" :depends-on ("_package_ChargingAction"))
    (:file "_package_ChargingAction" :depends-on ("_package"))
    (:file "ChargingActionFeedback" :depends-on ("_package_ChargingActionFeedback"))
    (:file "_package_ChargingActionFeedback" :depends-on ("_package"))
    (:file "ChargingActionGoal" :depends-on ("_package_ChargingActionGoal"))
    (:file "_package_ChargingActionGoal" :depends-on ("_package"))
    (:file "ChargingActionResult" :depends-on ("_package_ChargingActionResult"))
    (:file "_package_ChargingActionResult" :depends-on ("_package"))
    (:file "ChargingFeedback" :depends-on ("_package_ChargingFeedback"))
    (:file "_package_ChargingFeedback" :depends-on ("_package"))
    (:file "ChargingGoal" :depends-on ("_package_ChargingGoal"))
    (:file "_package_ChargingGoal" :depends-on ("_package"))
    (:file "ChargingResult" :depends-on ("_package_ChargingResult"))
    (:file "_package_ChargingResult" :depends-on ("_package"))
  ))