;; Auto-generated. Do not edit!


(when (boundp 'exploration_msgs::RobotInfoArray)
  (if (not (find-package "EXPLORATION_MSGS"))
    (make-package "EXPLORATION_MSGS"))
  (shadow 'RobotInfoArray (find-package "EXPLORATION_MSGS")))
(unless (find-package "EXPLORATION_MSGS::ROBOTINFOARRAY")
  (make-package "EXPLORATION_MSGS::ROBOTINFOARRAY"))

(in-package "ROS")
;;//! \htmlinclude RobotInfoArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass exploration_msgs::RobotInfoArray
  :super ros::object
  :slots (_header _info ))

(defmethod exploration_msgs::RobotInfoArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:info __info) (let (r) (dotimes (i 0) (push (instance exploration_msgs::RobotInfo :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _info __info)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:info
   (&rest __info)
   (if (keywordp (car __info))
       (send* _info __info)
     (progn
       (if __info (setq _info (car __info)))
       _info)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; exploration_msgs/RobotInfo[] _info
    (apply #'+ (send-all _info :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; exploration_msgs/RobotInfo[] _info
     (write-long (length _info) s)
     (dolist (elem _info)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; exploration_msgs/RobotInfo[] _info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _info (let (r) (dotimes (i n) (push (instance exploration_msgs::RobotInfo :init) r)) r))
     (dolist (elem- _info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get exploration_msgs::RobotInfoArray :md5sum-) "dcb6a4c494c1e1b789d0136f804a0c6f")
(setf (get exploration_msgs::RobotInfoArray :datatype-) "exploration_msgs/RobotInfoArray")
(setf (get exploration_msgs::RobotInfoArray :definition-)
      "std_msgs/Header header
exploration_msgs/RobotInfo[] info
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
MSG: exploration_msgs/RobotInfo
string name
geometry_msgs/Pose pose
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :exploration_msgs/RobotInfoArray "dcb6a4c494c1e1b789d0136f804a0c6f")


