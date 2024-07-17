;; Auto-generated. Do not edit!


(when (boundp 'exploration_msgs::Frontier)
  (if (not (find-package "EXPLORATION_MSGS"))
    (make-package "EXPLORATION_MSGS"))
  (shadow 'Frontier (find-package "EXPLORATION_MSGS")))
(unless (find-package "EXPLORATION_MSGS::FRONTIER")
  (make-package "EXPLORATION_MSGS::FRONTIER"))

(in-package "ROS")
;;//! \htmlinclude Frontier.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*NORMAL*" (find-package "EXPLORATION_MSGS::FRONTIER"))
(shadow '*NORMAL* (find-package "EXPLORATION_MSGS::FRONTIER"))
(defconstant exploration_msgs::Frontier::*NORMAL* 0)
(intern "*NOT_USEFUL*" (find-package "EXPLORATION_MSGS::FRONTIER"))
(shadow '*NOT_USEFUL* (find-package "EXPLORATION_MSGS::FRONTIER"))
(defconstant exploration_msgs::Frontier::*NOT_USEFUL* 1)
(intern "*ON_MAP*" (find-package "EXPLORATION_MSGS::FRONTIER"))
(shadow '*ON_MAP* (find-package "EXPLORATION_MSGS::FRONTIER"))
(defconstant exploration_msgs::Frontier::*ON_MAP* 2)
(defclass exploration_msgs::Frontier
  :super ros::object
  :slots (_point _area _variance _covariance _status ))

(defmethod exploration_msgs::Frontier
  (:init
   (&key
    ((:point __point) (instance geometry_msgs::Point :init))
    ((:area __area) 0.0)
    ((:variance __variance) (instance geometry_msgs::Vector3 :init))
    ((:covariance __covariance) 0.0)
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _point __point)
   (setq _area (float __area))
   (setq _variance __variance)
   (setq _covariance (float __covariance))
   (setq _status (round __status))
   self)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:area
   (&optional __area)
   (if __area (setq _area __area)) _area)
  (:variance
   (&rest __variance)
   (if (keywordp (car __variance))
       (send* _variance __variance)
     (progn
       (if __variance (setq _variance (car __variance)))
       _variance)))
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _point
    (send _point :serialization-length)
    ;; float64 _area
    8
    ;; geometry_msgs/Vector3 _variance
    (send _variance :serialization-length)
    ;; float64 _covariance
    8
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _point
       (send _point :serialize s)
     ;; float64 _area
       (sys::poke _area (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _variance
       (send _variance :serialize s)
     ;; float64 _covariance
       (sys::poke _covariance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;; float64 _area
     (setq _area (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _variance
     (send _variance :deserialize buf ptr-) (incf ptr- (send _variance :serialization-length))
   ;; float64 _covariance
     (setq _covariance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get exploration_msgs::Frontier :md5sum-) "33a483fe8f5225067ee15b62f5db7607")
(setf (get exploration_msgs::Frontier :datatype-) "exploration_msgs/Frontier")
(setf (get exploration_msgs::Frontier :definition-)
      "uint8 NORMAL = 0
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



(provide :exploration_msgs/Frontier "33a483fe8f5225067ee15b62f5db7607")


