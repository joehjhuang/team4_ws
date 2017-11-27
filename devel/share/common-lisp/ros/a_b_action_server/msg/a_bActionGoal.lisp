; Auto-generated. Do not edit!


(cl:in-package a_b_action_server-msg)


;//! \htmlinclude a_bActionGoal.msg.html

(cl:defclass <a_bActionGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (goal
    :reader goal
    :initarg :goal
    :type a_b_action_server-msg:a_bGoal
    :initform (cl:make-instance 'a_b_action_server-msg:a_bGoal)))
)

(cl:defclass a_bActionGoal (<a_bActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <a_bActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'a_bActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name a_b_action_server-msg:<a_bActionGoal> is deprecated: use a_b_action_server-msg:a_bActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <a_bActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader a_b_action_server-msg:header-val is deprecated.  Use a_b_action_server-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <a_bActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader a_b_action_server-msg:goal_id-val is deprecated.  Use a_b_action_server-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <a_bActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader a_b_action_server-msg:goal-val is deprecated.  Use a_b_action_server-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <a_bActionGoal>) ostream)
  "Serializes a message object of type '<a_bActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <a_bActionGoal>) istream)
  "Deserializes a message object of type '<a_bActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<a_bActionGoal>)))
  "Returns string type for a message object of type '<a_bActionGoal>"
  "a_b_action_server/a_bActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'a_bActionGoal)))
  "Returns string type for a message object of type 'a_bActionGoal"
  "a_b_action_server/a_bActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<a_bActionGoal>)))
  "Returns md5sum for a message object of type '<a_bActionGoal>"
  "cce5fc2de37a6c37345f149cd4d22f20")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'a_bActionGoal)))
  "Returns md5sum for a message object of type 'a_bActionGoal"
  "cce5fc2de37a6c37345f149cd4d22f20")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<a_bActionGoal>)))
  "Returns full string definition for message of type '<a_bActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%a_bGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: a_b_action_server/a_bGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%float32 force~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'a_bActionGoal)))
  "Returns full string definition for message of type 'a_bActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%a_bGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: a_b_action_server/a_bGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%float32 force~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <a_bActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <a_bActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'a_bActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
