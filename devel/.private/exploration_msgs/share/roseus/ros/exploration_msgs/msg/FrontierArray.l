;; Auto-generated. Do not edit!


(when (boundp 'exploration_msgs::FrontierArray)
  (if (not (find-package "EXPLORATION_MSGS"))
    (make-package "EXPLORATION_MSGS"))
  (shadow 'FrontierArray (find-package "EXPLORATION_MSGS")))
(unless (find-package "EXPLORATION_MSGS::FRONTIERARRAY")
  (make-package "EXPLORATION_MSGS::FRONTIERARRAY"))

(in-package "ROS")
;;//! \htmlinclude FrontierArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass exploration_msgs::FrontierArray
  :super ros::object
  :slots (_header _frontiers ))

(defmethod exploration_msgs::FrontierArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:frontiers __frontiers) (let (r) (dotimes (i 0) (push (instance exploration_msgs::Frontier :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _frontiers __frontiers)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:frontiers
   (&rest __frontiers)
   (if (keywordp (car __frontiers))
       (send* _frontiers __frontiers)
     (progn
       (if __frontiers (setq _frontiers (car __frontiers)))
       _frontiers)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; exploration_msgs/Frontier[] _frontiers
    (apply #'+ (send-all _frontiers :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; exploration_msgs/Frontier[] _frontiers
     (write-long (length _frontiers) s)
     (dolist (elem _frontiers)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; exploration_msgs/Frontier[] _frontiers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _frontiers (let (r) (dotimes (i n) (push (instance exploration_msgs::Frontier :init) r)) r))
     (dolist (elem- _frontiers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get exploration_msgs::FrontierArray :md5sum-) "8bb54628c31cc97b998214851f359684")
(setf (get exploration_msgs::FrontierArray :datatype-) "exploration_msgs/FrontierArray")
(setf (get exploration_msgs::FrontierArray :definition-)
      "std_msgs/Header header
exploration_msgs/Frontier[] frontiers
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: exploration_msgs/Frontier
uint8 NORMAL = 0
uint8 NOT_USEFUL = 1
uint8 ON_MAP = 2

geometry_msgs/Point point
float64 area
geometry_msgs/Vector3 variance
float64 covariance
uint8 status
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :exploration_msgs/FrontierArray "8bb54628c31cc97b998214851f359684")


