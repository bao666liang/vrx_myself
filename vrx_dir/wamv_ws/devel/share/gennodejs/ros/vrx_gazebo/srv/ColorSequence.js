// Auto-generated. Do not edit!

// (in-package vrx_gazebo.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ColorSequenceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.color1 = null;
      this.color2 = null;
      this.color3 = null;
    }
    else {
      if (initObj.hasOwnProperty('color1')) {
        this.color1 = initObj.color1
      }
      else {
        this.color1 = '';
      }
      if (initObj.hasOwnProperty('color2')) {
        this.color2 = initObj.color2
      }
      else {
        this.color2 = '';
      }
      if (initObj.hasOwnProperty('color3')) {
        this.color3 = initObj.color3
      }
      else {
        this.color3 = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ColorSequenceRequest
    // Serialize message field [color1]
    bufferOffset = _serializer.string(obj.color1, buffer, bufferOffset);
    // Serialize message field [color2]
    bufferOffset = _serializer.string(obj.color2, buffer, bufferOffset);
    // Serialize message field [color3]
    bufferOffset = _serializer.string(obj.color3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ColorSequenceRequest
    let len;
    let data = new ColorSequenceRequest(null);
    // Deserialize message field [color1]
    data.color1 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [color2]
    data.color2 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [color3]
    data.color3 = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.color1);
    length += _getByteLength(object.color2);
    length += _getByteLength(object.color3);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrx_gazebo/ColorSequenceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '814c89d706310e11e30ed83a7a64e7e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Color sequence submission
    
    # Color sequence
    string color1
    string color2
    string color3
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ColorSequenceRequest(null);
    if (msg.color1 !== undefined) {
      resolved.color1 = msg.color1;
    }
    else {
      resolved.color1 = ''
    }

    if (msg.color2 !== undefined) {
      resolved.color2 = msg.color2;
    }
    else {
      resolved.color2 = ''
    }

    if (msg.color3 !== undefined) {
      resolved.color3 = msg.color3;
    }
    else {
      resolved.color3 = ''
    }

    return resolved;
    }
};

class ColorSequenceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ColorSequenceResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ColorSequenceResponse
    let len;
    let data = new ColorSequenceResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrx_gazebo/ColorSequenceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ColorSequenceResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ColorSequenceRequest,
  Response: ColorSequenceResponse,
  md5sum() { return '3969b5fd7ff15f6de27340edae0cd056'; },
  datatype() { return 'vrx_gazebo/ColorSequence'; }
};
