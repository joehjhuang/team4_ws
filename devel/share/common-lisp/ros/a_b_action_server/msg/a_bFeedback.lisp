; Auto-generated. Do not edit!


(cl:in-package a_b_action_server-msg)


;//! \htmlinclude a_bFeedback.msg.html

(cl:defclass <a_bFeedback> (roslisp-msg-protocol:ros-message)
  ((moved_distance
    :reader moved_distance
    :initarg :moved_distance
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass a_bFeedback (<a_bFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <a_bFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'a_bFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name a_b_action_server-msg:<a_bFeedback> is deprecated: use a_b_action_server-msg:a_bFeedback instead.")))

(cl:ensure-generic-function 'moved_distance-val :lambda-list '(m))
(cl:defmethod moved_distance-val ((m <a_bFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader a_b_action_server-msg:moved_distance-val is deprecated.  Use a_b_action_server-msg:moved_distance instead.")
  (moved_distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <a_bFeedback>) ostream)
  "Serializes a message object of type '<a_bFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'moved_distance) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <a_bFeedback>) istream)
  "Deserializes a message object of type '<a_bFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'moved_distance) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<a_bFeedback>)))
  "Returns string type for a message object of type '<a_bFeedback>"
  "a_b_action_server/a_bFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'a_bFeedback)))
  "Returns string type for a message object of type 'a_bFeedback"
  "a_b_action_server/a_bFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<a_bFeedback>)))
  "Returns md5sum for a message object of type '<a_bFeedback>"
  "f4cbd35290f8c2d64781aec16f1ffd5e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'a_bFeedback)))
  "Returns md5sum for a message object of type 'a_bFeedback"
  "f4cbd35290f8c2d64781aec16f1ffd5e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<a_bFeedback>)))
  "Returns full string definition for message of type '<a_bFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%geometry_msgs/Vector3 moved_distance~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'a_bFeedback)))
  "Returns full string definition for message of type 'a_bFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%geometry_msgs/Vector3 moved_distance~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <a_bFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'moved_distance))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <a_bFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'a_bFeedback
    (cl:cons ':moved_distance (moved_distance msg))
))
