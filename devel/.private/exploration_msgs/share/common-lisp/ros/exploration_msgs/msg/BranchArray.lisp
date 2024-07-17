; Auto-generated. Do not edit!


(cl:in-package exploration_msgs-msg)


;//! \htmlinclude BranchArray.msg.html

(cl:defclass <BranchArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (branches
    :reader branches
    :initarg :branches
    :type (cl:vector exploration_msgs-msg:Branch)
   :initform (cl:make-array 0 :element-type 'exploration_msgs-msg:Branch :initial-element (cl:make-instance 'exploration_msgs-msg:Branch))))
)

(cl:defclass BranchArray (<BranchArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BranchArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BranchArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exploration_msgs-msg:<BranchArray> is deprecated: use exploration_msgs-msg:BranchArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BranchArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:header-val is deprecated.  Use exploration_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'branches-val :lambda-list '(m))
(cl:defmethod branches-val ((m <BranchArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:branches-val is deprecated.  Use exploration_msgs-msg:branches instead.")
  (branches m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BranchArray>) ostream)
  "Serializes a message object of type '<BranchArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'branches))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'branches))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BranchArray>) istream)
  "Deserializes a message object of type '<BranchArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'branches) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'branches)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'exploration_msgs-msg:Branch))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BranchArray>)))
  "Returns string type for a message object of type '<BranchArray>"
  "exploration_msgs/BranchArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BranchArray)))
  "Returns string type for a message object of type 'BranchArray"
  "exploration_msgs/BranchArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BranchArray>)))
  "Returns md5sum for a message object of type '<BranchArray>"
  "c6d5d4a8518c4ca4468062fc9977ef95")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BranchArray)))
  "Returns md5sum for a message object of type 'BranchArray"
  "c6d5d4a8518c4ca4468062fc9977ef95")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BranchArray>)))
  "Returns full string definition for message of type '<BranchArray>"
  (cl:format cl:nil "std_msgs/Header header~%exploration_msgs/Branch[] branches~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: exploration_msgs/Branch~%uint8 NORMAL = 0~%uint8 OLDER_DUPLICATION = 1~%uint8 NEWER_DUPLICATION = 2~%uint8 ON_MAP = 3~%~%geometry_msgs/Point point~%uint8 status~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BranchArray)))
  "Returns full string definition for message of type 'BranchArray"
  (cl:format cl:nil "std_msgs/Header header~%exploration_msgs/Branch[] branches~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: exploration_msgs/Branch~%uint8 NORMAL = 0~%uint8 OLDER_DUPLICATION = 1~%uint8 NEWER_DUPLICATION = 2~%uint8 ON_MAP = 3~%~%geometry_msgs/Point point~%uint8 status~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BranchArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'branches) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BranchArray>))
  "Converts a ROS message object to a list"
  (cl:list 'BranchArray
    (cl:cons ':header (header msg))
    (cl:cons ':branches (branches msg))
))
