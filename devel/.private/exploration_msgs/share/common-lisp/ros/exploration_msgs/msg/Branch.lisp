; Auto-generated. Do not edit!


(cl:in-package exploration_msgs-msg)


;//! \htmlinclude Branch.msg.html

(cl:defclass <Branch> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Branch (<Branch>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Branch>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Branch)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exploration_msgs-msg:<Branch> is deprecated: use exploration_msgs-msg:Branch instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <Branch>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:point-val is deprecated.  Use exploration_msgs-msg:point instead.")
  (point m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Branch>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exploration_msgs-msg:status-val is deprecated.  Use exploration_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Branch>)))
    "Constants for message type '<Branch>"
  '((:NORMAL . 0)
    (:OLDER_DUPLICATION . 1)
    (:NEWER_DUPLICATION . 2)
    (:ON_MAP . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Branch)))
    "Constants for message type 'Branch"
  '((:NORMAL . 0)
    (:OLDER_DUPLICATION . 1)
    (:NEWER_DUPLICATION . 2)
    (:ON_MAP . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Branch>) ostream)
  "Serializes a message object of type '<Branch>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Branch>) istream)
  "Deserializes a message object of type '<Branch>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Branch>)))
  "Returns string type for a message object of type '<Branch>"
  "exploration_msgs/Branch")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Branch)))
  "Returns string type for a message object of type 'Branch"
  "exploration_msgs/Branch")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Branch>)))
  "Returns md5sum for a message object of type '<Branch>"
  "ac2bb0e3b3b461e0f1c8e34dca5c8ba9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Branch)))
  "Returns md5sum for a message object of type 'Branch"
  "ac2bb0e3b3b461e0f1c8e34dca5c8ba9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Branch>)))
  "Returns full string definition for message of type '<Branch>"
  (cl:format cl:nil "uint8 NORMAL = 0~%uint8 OLDER_DUPLICATION = 1~%uint8 NEWER_DUPLICATION = 2~%uint8 ON_MAP = 3~%~%geometry_msgs/Point point~%uint8 status~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Branch)))
  "Returns full string definition for message of type 'Branch"
  (cl:format cl:nil "uint8 NORMAL = 0~%uint8 OLDER_DUPLICATION = 1~%uint8 NEWER_DUPLICATION = 2~%uint8 ON_MAP = 3~%~%geometry_msgs/Point point~%uint8 status~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Branch>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Branch>))
  "Converts a ROS message object to a list"
  (cl:list 'Branch
    (cl:cons ':point (point msg))
    (cl:cons ':status (status msg))
))
