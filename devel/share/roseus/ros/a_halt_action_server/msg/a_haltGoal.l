;; Auto-generated. Do not edit!


(when (boundp 'a_halt_action_server::a_haltGoal)
  (if (not (find-package "A_HALT_ACTION_SERVER"))
    (make-package "A_HALT_ACTION_SERVER"))
  (shadow 'a_haltGoal (find-package "A_HALT_ACTION_SERVER")))
(unless (find-package "A_HALT_ACTION_SERVER::A_HALTGOAL")
  (make-package "A_HALT_ACTION_SERVER::A_HALTGOAL"))

(in-package "ROS")
;;//! \htmlinclude a_haltGoal.msg.html


(defclass a_halt_action_server::a_haltGoal
  :super ros::object
  :slots ())

(defmethod a_halt_action_server::a_haltGoal
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get a_halt_action_server::a_haltGoal :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get a_halt_action_server::a_haltGoal :datatype-) "a_halt_action_server/a_haltGoal")
(setf (get a_halt_action_server::a_haltGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

")



(provide :a_halt_action_server/a_haltGoal "d41d8cd98f00b204e9800998ecf8427e")

