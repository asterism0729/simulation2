;; Auto-generated. Do not edit!


(when (boundp 'exploration_msgs::BranchArray)
  (if (not (find-package "EXPLORATION_MSGS"))
    (make-package "EXPLORATION_MSGS"))
  (shadow 'BranchArray (find-package "EXPLORATION_MSGS")))
(unless (find-package "EXPLORATION_MSGS::BRANCHARRAY")
  (make-package "EXPLORATION_MSGS::BRANCHARRAY"))

(in-package "ROS")
;;//! \htmlinclude BranchArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass exploration_msgs::BranchArray
  :super ros::object
  :slots (_header _branches ))

(defmethod exploration_msgs::BranchArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:branches __branches) (let (r) (dotimes (i 0) (push (instance exploration_msgs::Branch :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _branches __branches)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:branches
   (&rest __branches)
   (if (keywordp (car __branches))
       (send* _branches __branches)
     (progn
       (if __branches (setq _branches (car __branches)))
       _branches)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; exploration_msgs/Branch[] _branches
    (apply #'+ (send-all _branches :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; exploration_msgs/Branch[] _branches
     (write-long (length _branches) s)
     (dolist (elem _branches)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; exploration_msgs/Branch[] _branches
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _branches (let (r) (dotimes (i n) (push (instance exploration_msgs::Branch :init) r)) r))
     (dolist (elem- _branches)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get exploration_msgs::BranchArray :md5sum-) "c6d5d4a8518c4ca4468062fc9977ef95")
(setf (get exploration_msgs::BranchArray :datatype-) "exploration_msgs/BranchArray")
(setf (get exploration_msgs::BranchArray :definition-)
      "std_msgs/Header header
exploration_msgs/Branch[] branches
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
MSG: exploration_msgs/Branch
uint8 NORMAL = 0
uint8 OLDER_DUPLICATION = 1
uint8 NEWER_DUPLICATION = 2
uint8 ON_MAP = 3

geometry_msgs/Point point
uint8 status
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :exploration_msgs/BranchArray "c6d5d4a8518c4ca4468062fc9977ef95")


