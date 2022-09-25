// Auto-generated. Do not edit!

// (in-package vrx_gazebo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Contact {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.collision1 = null;
      this.collision2 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('collision1')) {
        this.collision1 = initObj.collision1
      }
      else {
        this.collision1 = '';
      }
      if (initObj.hasOwnProperty('collision2')) {
        this.collision2 = initObj.collision2
      }
      else {
        this.collision2 = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Contact
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [collision1]
    bufferOffset = _serializer.string(obj.collision1, buffer, bufferOffset);
    // Serialize message field [collision2]
    bufferOffset = _serializer.string(obj.collision2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Contact
    let len;
    let data = new Contact(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [collision1]
    data.collision1 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [collision2]
    data.collision2 = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.collision1);
    length += _getByteLength(object.collision2);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vrx_gazebo/Contact';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fc95c38568039a66bfb95d0e976561b9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string collision1
    string collision2
    
    
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
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Contact(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.collision1 !== undefined) {
      resolved.collision1 = msg.collision1;
    }
    else {
      resolved.collision1 = ''
    }

    if (msg.collision2 !== undefined) {
      resolved.collision2 = msg.collision2;
    }
    else {
      resolved.collision2 = ''
    }

    return resolved;
    }
};

module.exports = Contact;
