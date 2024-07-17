; Auto-generated. Do not edit!


(cl:in-package exploration_msgs-msg)


;//! \htmlinclude AvoidanceStatus.msg.html

(cl:defclass <AvoidanceStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform "")
   (calc_range_method
    :reader calc_range_method
    :initarg :calc_range_method
    :type cl:fixnum
    :initform 0)
   (range_pattern
    :reader range_pattern
    :initarg :range_pattern
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (descriptions
    :reader descriptions
    :initarg :descriptions
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (scan_frame_id
    :reader scan_frame_id
    :initarg :scan_frame_id
    :type cl:string
    :initform "")
   (scan_angle_min
    :reader scan_angle_min
    :initarg :scan_angle_min
    :type cl:float
    :initform 0.0)
   (scan_angle_max
    :reader scan_angle_max
    :initarg :scan_angle_max
    :type cl:float
    :initform 0.0)
   (scan_angle_increment
    :reader scan_angle_increment
    :initarg :scan_angle_increment
    :type cl:float
    :initform 0.0))
)

(cl:defclass AvoidanceStatus (<AvoidanceStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AvoidanceStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AvoidanceStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exploration_msgs-msg:<AvoidanceStatus> is deprecated: use exploration_msgs-msg:AvoidanceStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AvoidanceStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:header-val is deprecated.  Use exploration_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <AvoidanceStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:status-val is deprecated.  Use exploration_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'calc_range_method-val :lambda-list '(m))
(cl:defmethod calc_range_method-val ((m <AvoidanceStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:calc_range_method-val is deprecated.  Use exploration_msgs-msg:calc_range_method instead.")
  (calc_range_method m))

(cl:ensure-generic-function 'range_pattern-val :lambda-list '(m))
(cl:defmethod range_pattern-val ((m <AvoidanceStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:range_pattern-val is deprecated.  Use exploration_msgs-msg:range_pattern instead.")
  (range_pattern m))

(cl:ensure-generic-function 'descriptions-val :lambda-list '(m))
(cl:defmethod descriptions-val ((m <AvoidanceStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:descriptions-val is deprecated.  Use exploration_msgs-msg:descriptions instead.")
  (descriptions m))

(cl:ensure-generic-function 'scan_frame_id-val :lambda-list '(m))
(cl:defmethod scan_frame_id-val ((m <AvoidanceStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:scan_frame_id-val is deprecated.  Use exploration_msgs-msg:scan_frame_id instead.")
  (scan_frame_id m))

(cl:ensure-generic-function 'scan_angle_min-val :lambda-list '(m))
(cl:defmethod scan_angle_min-val ((m <AvoidanceStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:scan_angle_min-val is deprecated.  Use exploration_msgs-msg:scan_angle_min instead.")
  (scan_angle_min m))

(cl:ensure-generic-function 'scan_angle_max-val :lambda-list '(m))
(cl:defmethod scan_angle_max-val ((m <AvoidanceStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:scan_angle_max-val is deprecated.  Use exploration_msgs-msg:scan_angle_max instead.")
  (scan_angle_max m))

(cl:ensure-generic-function 'scan_angle_increment-val :lambda-list '(m))
(cl:defmethod scan_angle_increment-val ((m <AvoidanceStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:scan_angle_increment-val is deprecated.  Use exploration_msgs-msg:scan_angle_increment instead.")
  (scan_angle_increment m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AvoidanceStatus>)))
    "Constants for message type '<AvoidanceStatus>"
  '((:NORMAL . 0)
    (:COS . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AvoidanceStatus)))
    "Constants for message type 'AvoidanceStatus"
  '((:NORMAL . 0)
    (:COS . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AvoidanceStatus>) ostream)
  "Serializes a message object of type '<AvoidanceStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'calc_range_method)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'range_pattern))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'range_pattern))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'descriptions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'descriptions))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'scan_frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'scan_frame_id))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'scan_angle_min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'scan_angle_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'scan_angle_increment))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AvoidanceStatus>) istream)
  "Deserializes a message object of type '<AvoidanceStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'calc_range_method)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'range_pattern) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'range_pattern)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'descriptions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'descriptions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'scan_frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'scan_frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'scan_angle_min) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'scan_angle_max) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'scan_angle_increment) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AvoidanceStatus>)))
  "Returns string type for a message object of type '<AvoidanceStatus>"
  "exploration_msgs/AvoidanceStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AvoidanceStatus)))
  "Returns string type for a message object of type 'AvoidanceStatus"
  "exploration_msgs/AvoidanceStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AvoidanceStatus>)))
  "Returns md5sum for a message object of type '<AvoidanceStatus>"
  "644ba19b79e5b551c2edaf8b46d599dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AvoidanceStatus)))
  "Returns md5sum for a message object of type 'AvoidanceStatus"
  "644ba19b79e5b551c2edaf8b46d599dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AvoidanceStatus>)))
  "Returns full string definition for message of type '<AvoidanceStatus>"
  (cl:format cl:nil "uint8 NORMAL = 0~%uint8 COS = 1~%~%std_msgs/Header header~%string status # move_base, VFH~%uint8 calc_range_method # normal , cos~%float64[] range_pattern # avoidance ranges pattern~%string[] descriptions # ranges description~%string scan_frame_id~%float32 scan_angle_min~%float32 scan_angle_max~%float32 scan_angle_increment~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AvoidanceStatus)))
  "Returns full string definition for message of type 'AvoidanceStatus"
  (cl:format cl:nil "uint8 NORMAL = 0~%uint8 COS = 1~%~%std_msgs/Header header~%string status # move_base, VFH~%uint8 calc_range_method # normal , cos~%float64[] range_pattern # avoidance ranges pattern~%string[] descriptions # ranges description~%string scan_frame_id~%float32 scan_angle_min~%float32 scan_angle_max~%float32 scan_angle_increment~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AvoidanceStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'status))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'range_pattern) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'descriptions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:length (cl:slot-value msg 'scan_frame_id))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AvoidanceStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'AvoidanceStatus
    (cl:cons ':header (header msg))
    (cl:cons ':status (status msg))
    (cl:cons ':calc_range_method (calc_range_method msg))
    (cl:cons ':range_pattern (range_pattern msg))
    (cl:cons ':descriptions (descriptions msg))
    (cl:cons ':scan_frame_id (scan_frame_id msg))
    (cl:cons ':scan_angle_min (scan_angle_min msg))
    (cl:cons ':scan_angle_max (scan_angle_max msg))
    (cl:cons ':scan_angle_increment (scan_angle_increment msg))
))
