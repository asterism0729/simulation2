;; Auto-generated. Do not edit!


(when (boundp 'exploration_msgs::Branch)
  (if (not (find-package "EXPLORATION_MSGS"))
    (make-package "EXPLORATION_MSGS"))
  (shadow 'Branch (find-package "EXPLORATION_MSGS")))
(unless (find-package "EXPLORATION_MSGS::BRANCH")
  (make-package "EXPLORATION_MSGS::BRANCH"))

(in-package "ROS")
;;//! \htmlinclude Branch.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*NORMAL*" (find-package "EXPLORATION_MSGS::BRANCH"))
(shadow '*NORMAL* (find-package "EXPLORATION_MSGS::BRANCH"))
(defconstant exploration_msgs::Branch::*NORMAL* 0)
(intern "*OLDER_DUPLICATION*" (find-package "EXPLORATION_MSGS::BRANCH"))
(shadow '*OLDER_DUPLICATION* (find-package "EXPLORATION_MSGS::BRANCH"))
(defconstant exploration_msgs::Branch::*OLDER_DUPLICATION* 1)
(intern "*NEWER_DUPLICATION*" (find-package "EXPLORATION_MSGS::BRANCH"))
(shadow '*NEWER_DUPLICATION* (find-package "EXPLORATION_MSGS::BRANCH"))
(defconstant exploration_msgs::Branch::*NEWER_DUPLICATION* 2)
(intern "*ON_MAP*" (find-package "EXPLORATION_MSGS::BRANCH"))
(shadow '*ON_MAP* (find-package "EXPLORATION_MSGS::BRANCH"))
(defconstant exploration_msgs::Branch::*ON_MAP* 3)
(defclass exploration_msgs::Branch
  :super ros::object
  :slots (_point _status ))

(defmethod exploration_msgs::Branch
  (:init
   (&key
    ((:point __point) (instance geometry_msgs::Point :init))
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _point __point)
   (setq _status (round __status))
   self)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _point
    (send _point :serialization-length)
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _point
       (send _point :serialize s)
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get exploration_msgs::Branch :md5sum-) "ac2bb0e3b3b461e0f1c8e34dca5c8ba9")
(setf (get exploration_msgs::Branch :datatype-) "exploration_msgs/Branch")
(setf (get exploration_msgs::Branch :definition-)
      "uint8 NORMAL = 0
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



(provide :exploration_msgs/Branch "ac2bb0e3b3b461e0f1c8e34dca5c8ba9")


