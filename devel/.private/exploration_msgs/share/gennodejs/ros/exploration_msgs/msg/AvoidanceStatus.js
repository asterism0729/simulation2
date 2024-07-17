// Auto-generated. Do not edit!

// (in-package exploration_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class AvoidanceStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.status = null;
      this.calc_range_method = null;
      this.range_pattern = null;
      this.descriptions = null;
      this.scan_frame_id = null;
      this.scan_angle_min = null;
      this.scan_angle_max = null;
      this.scan_angle_increment = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
      if (initObj.hasOwnProperty('calc_range_method')) {
        this.calc_range_method = initObj.calc_range_method
      }
      else {
        this.calc_range_method = 0;
      }
      if (initObj.hasOwnProperty('range_pattern')) {
        this.range_pattern = initObj.range_pattern
      }
      else {
        this.range_pattern = [];
      }
      if (initObj.hasOwnProperty('descriptions')) {
        this.descriptions = initObj.descriptions
      }
      else {
        this.descriptions = [];
      }
      if (initObj.hasOwnProperty('scan_frame_id')) {
        this.scan_frame_id = initObj.scan_frame_id
      }
      else {
        this.scan_frame_id = '';
      }
      if (initObj.hasOwnProperty('scan_angle_min')) {
        this.scan_angle_min = initObj.scan_angle_min
      }
      else {
        this.scan_angle_min = 0.0;
      }
      if (initObj.hasOwnProperty('scan_angle_max')) {
        this.scan_angle_max = initObj.scan_angle_max
      }
      else {
        this.scan_angle_max = 0.0;
      }
      if (initObj.hasOwnProperty('scan_angle_increment')) {
        this.scan_angle_increment = initObj.scan_angle_increment
      }
      else {
        this.scan_angle_increment = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AvoidanceStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    // Serialize message field [calc_range_method]
    bufferOffset = _serializer.uint8(obj.calc_range_method, buffer, bufferOffset);
    // Serialize message field [range_pattern]
    bufferOffset = _arraySerializer.float64(obj.range_pattern, buffer, bufferOffset, null);
    // Serialize message field [descriptions]
    bufferOffset = _arraySerializer.string(obj.descriptions, buffer, bufferOffset, null);
    // Serialize message field [scan_frame_id]
    bufferOffset = _serializer.string(obj.scan_frame_id, buffer, bufferOffset);
    // Serialize message field [scan_angle_min]
    bufferOffset = _serializer.float32(obj.scan_angle_min, buffer, bufferOffset);
    // Serialize message field [scan_angle_max]
    bufferOffset = _serializer.float32(obj.scan_angle_max, buffer, bufferOffset);
    // Serialize message field [scan_angle_increment]
    bufferOffset = _serializer.float32(obj.scan_angle_increment, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AvoidanceStatus
    let len;
    let data = new AvoidanceStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [calc_range_method]
    data.calc_range_method = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [range_pattern]
    data.range_pattern = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [descriptions]
    data.descriptions = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [scan_frame_id]
    data.scan_frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [scan_angle_min]
    data.scan_angle_min = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [scan_angle_max]
    data.scan_angle_max = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [scan_angle_increment]
    data.scan_angle_increment = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.status.length;
    length += 8 * object.range_pattern.length;
    object.descriptions.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.scan_frame_id.length;
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'exploration_msgs/AvoidanceStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '644ba19b79e5b551c2edaf8b46d599dc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 NORMAL = 0
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AvoidanceStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    if (msg.calc_range_method !== undefined) {
      resolved.calc_range_method = msg.calc_range_method;
    }
    else {
      resolved.calc_range_method = 0
    }

    if (msg.range_pattern !== undefined) {
      resolved.range_pattern = msg.range_pattern;
    }
    else {
      resolved.range_pattern = []
    }

    if (msg.descriptions !== undefined) {
      resolved.descriptions = msg.descriptions;
    }
    else {
      resolved.descriptions = []
    }

    if (msg.scan_frame_id !== undefined) {
      resolved.scan_frame_id = msg.scan_frame_id;
    }
    else {
      resolved.scan_frame_id = ''
    }

    if (msg.scan_angle_min !== undefined) {
      resolved.scan_angle_min = msg.scan_angle_min;
    }
    else {
      resolved.scan_angle_min = 0.0
    }

    if (msg.scan_angle_max !== undefined) {
      resolved.scan_angle_max = msg.scan_angle_max;
    }
    else {
      resolved.scan_angle_max = 0.0
    }

    if (msg.scan_angle_increment !== undefined) {
      resolved.scan_angle_increment = msg.scan_angle_increment;
    }
    else {
      resolved.scan_angle_increment = 0.0
    }

    return resolved;
    }
};

// Constants for message
AvoidanceStatus.Constants = {
  NORMAL: 0,
  COS: 1,
}

module.exports = AvoidanceStatus;
