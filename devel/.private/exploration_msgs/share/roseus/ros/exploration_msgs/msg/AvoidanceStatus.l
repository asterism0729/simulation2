;; Auto-generated. Do not edit!


(when (boundp 'exploration_msgs::AvoidanceStatus)
  (if (not (find-package "EXPLORATION_MSGS"))
    (make-package "EXPLORATION_MSGS"))
  (shadow 'AvoidanceStatus (find-package "EXPLORATION_MSGS")))
(unless (find-package "EXPLORATION_MSGS::AVOIDANCESTATUS")
  (make-package "EXPLORATION_MSGS::AVOIDANCESTATUS"))

(in-package "ROS")
;;//! \htmlinclude AvoidanceStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*NORMAL*" (find-package "EXPLORATION_MSGS::AVOIDANCESTATUS"))
(shadow '*NORMAL* (find-package "EXPLORATION_MSGS::AVOIDANCESTATUS"))
(defconstant exploration_msgs::AvoidanceStatus::*NORMAL* 0)
(intern "*COS*" (find-package "EXPLORATION_MSGS::AVOIDANCESTATUS"))
(shadow '*COS* (find-package "EXPLORATION_MSGS::AVOIDANCESTATUS"))
(defconstant exploration_msgs::AvoidanceStatus::*COS* 1)
(defclass exploration_msgs::AvoidanceStatus
  :super ros::object
  :slots (_header _status _calc_range_method _range_pattern _descriptions _scan_frame_id _scan_angle_min _scan_angle_max _scan_angle_increment ))

(defmethod exploration_msgs::AvoidanceStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status __status) "")
    ((:calc_range_method __calc_range_method) 0)
    ((:range_pattern __range_pattern) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:descriptions __descriptions) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:scan_frame_id __scan_frame_id) "")
    ((:scan_angle_min __scan_angle_min) 0.0)
    ((:scan_angle_max __scan_angle_max) 0.0)
    ((:scan_angle_increment __scan_angle_increment) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _status (string __status))
   (setq _calc_range_method (round __calc_range_method))
   (setq _range_pattern __range_pattern)
   (setq _descriptions __descriptions)
   (setq _scan_frame_id (string __scan_frame_id))
   (setq _scan_angle_min (float __scan_angle_min))
   (setq _scan_angle_max (float __scan_angle_max))
   (setq _scan_angle_increment (float __scan_angle_increment))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:calc_range_method
   (&optional __calc_range_method)
   (if __calc_range_method (setq _calc_range_method __calc_range_method)) _calc_range_method)
  (:range_pattern
   (&optional __range_pattern)
   (if __range_pattern (setq _range_pattern __range_pattern)) _range_pattern)
  (:descriptions
   (&optional __descriptions)
   (if __descriptions (setq _descriptions __descriptions)) _descriptions)
  (:scan_frame_id
   (&optional __scan_frame_id)
   (if __scan_frame_id (setq _scan_frame_id __scan_frame_id)) _scan_frame_id)
  (:scan_angle_min
   (&optional __scan_angle_min)
   (if __scan_angle_min (setq _scan_angle_min __scan_angle_min)) _scan_angle_min)
  (:scan_angle_max
   (&optional __scan_angle_max)
   (if __scan_angle_max (setq _scan_angle_max __scan_angle_max)) _scan_angle_max)
  (:scan_angle_increment
   (&optional __scan_angle_increment)
   (if __scan_angle_increment (setq _scan_angle_increment __scan_angle_increment)) _scan_angle_increment)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _status
    4 (length _status)
    ;; uint8 _calc_range_method
    1
    ;; float64[] _range_pattern
    (* 8    (length _range_pattern)) 4
    ;; string[] _descriptions
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _descriptions)) 4
    ;; string _scan_frame_id
    4 (length _scan_frame_id)
    ;; float32 _scan_angle_min
    4
    ;; float32 _scan_angle_max
    4
    ;; float32 _scan_angle_increment
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; uint8 _calc_range_method
       (write-byte _calc_range_method s)
     ;; float64[] _range_pattern
     (write-long (length _range_pattern) s)
     (dotimes (i (length _range_pattern))
       (sys::poke (elt _range_pattern i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; string[] _descriptions
     (write-long (length _descriptions) s)
     (dolist (elem _descriptions)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _scan_frame_id
       (write-long (length _scan_frame_id) s) (princ _scan_frame_id s)
     ;; float32 _scan_angle_min
       (sys::poke _scan_angle_min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _scan_angle_max
       (sys::poke _scan_angle_max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _scan_angle_increment
       (sys::poke _scan_angle_increment (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _calc_range_method
     (setq _calc_range_method (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64[] _range_pattern
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _range_pattern (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _range_pattern i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; string[] _descriptions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _descriptions (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _descriptions i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _scan_frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _scan_frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _scan_angle_min
     (setq _scan_angle_min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _scan_angle_max
     (setq _scan_angle_max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _scan_angle_increment
     (setq _scan_angle_increment (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get exploration_msgs::AvoidanceStatus :md5sum-) "644ba19b79e5b551c2edaf8b46d599dc")
(setf (get exploration_msgs::AvoidanceStatus :datatype-) "exploration_msgs/AvoidanceStatus")
(setf (get exploration_msgs::AvoidanceStatus :definition-)
      "uint8 NORMAL = 0
uint8 COS = 1

std_msgs/Header header
string status # move_base, VFH
uint8 calc_range_method # normal , cos
float64[] range_pattern # avoidance ranges pattern
string[] descriptions # ranges description
string scan_frame_id
float32 scan_angle_min
float32 scan_angle_max
float32 scan_angle_increment

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

")



(provide :exploration_msgs/AvoidanceStatus "644ba19b79e5b551c2edaf8b46d599dc")


