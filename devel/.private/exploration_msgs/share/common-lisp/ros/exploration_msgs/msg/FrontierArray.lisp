; Auto-generated. Do not edit!


(cl:in-package exploration_msgs-msg)


;//! \htmlinclude FrontierArray.msg.html

(cl:defclass <FrontierArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (frontiers
    :reader frontiers
    :initarg :frontiers
    :type (cl:vector exploration_msgs-msg:Frontier)
   :initform (cl:make-array 0 :element-type 'exploration_msgs-msg:Frontier :initial-element (cl:make-instance 'exploration_msgs-msg:Frontier))))
)

(cl:defclass FrontierArray (<FrontierArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FrontierArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FrontierArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exploration_msgs-msg:<FrontierArray> is deprecated: use exploration_msgs-msg:FrontierArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FrontierArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:header-val is deprecated.  Use exploration_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'frontiers-val :lambda-list '(m))
(cl:defmethod frontiers-val ((m <FrontierArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:frontiers-val is deprecated.  Use exploration_msgs-msg:frontiers instead.")
  (frontiers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FrontierArray>) ostream)
  "Serializes a message object of type '<FrontierArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'frontiers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'frontiers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FrontierArray>) istream)
  "Deserializes a message object of type '<FrontierArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'frontiers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'frontiers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'exploration_msgs-msg:Frontier))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FrontierArray>)))
  "Returns string type for a message object of type '<FrontierArray>"
  "exploration_msgs/FrontierArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FrontierArray)))
  "Returns string type for a message object of type 'FrontierArray"
  "exploration_msgs/FrontierArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FrontierArray>)))
  "Returns md5sum for a message object of type '<FrontierArray>"
  "8bb54628c31cc97b998214851f359684")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FrontierArray)))
  "Returns md5sum for a message object of type 'FrontierArray"
  "8bb54628c31cc97b998214851f359684")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FrontierArray>)))
  "Returns full string definition for message of type '<FrontierArray>"
  (cl:format cl:nil "std_msgs/Header header~%exploration_msgs/Frontier[] frontiers~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: exploration_msgs/Frontier~%uint8 NORMAL = 0~%uint8 NOT_USEFUL = 1~%uint8 ON_MAP = 2~%~%geometry_msgs/Point point~%float64 area~%geometry_msgs/Vector3 variance~%float64 covariance~%uint8 status~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FrontierArray)))
  "Returns full string definition for message of type 'FrontierArray"
  (cl:format cl:nil "std_msgs/Header header~%exploration_msgs/Frontier[] frontiers~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: exploration_msgs/Frontier~%uint8 NORMAL = 0~%uint8 NOT_USEFUL = 1~%uint8 ON_MAP = 2~%~%geometry_msgs/Point point~%float64 area~%geometry_msgs/Vector3 variance~%float64 covariance~%uint8 status~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FrontierArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'frontiers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FrontierArray>))
  "Converts a ROS message object to a list"
  (cl:list 'FrontierArray
    (cl:cons ':header (header msg))
    (cl:cons ':frontiers (frontiers msg))
))
