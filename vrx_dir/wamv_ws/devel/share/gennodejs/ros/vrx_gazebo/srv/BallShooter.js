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

class BallShooterRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.shoot = null;
    }
    else {
      if (initObj.hasOwnProperty('shoot')) {
        this.shoot = initObj.shoot
      }
      else {
        this.shoot = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BallShooterRequest
    // Serialize message field [shoot]
    bufferOffset = _serializer.bool(obj.shoot, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BallShooterRequest
    let len;
    let data = new BallShooterRequest(null);
    // Deserialize message field [shoot]
    data.shoot = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrx_gazebo/BallShooterRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6650cf67c2d9602e920f52a11329e98f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Ball shooter service
    
    bool shoot
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BallShooterRequest(null);
    if (msg.shoot !== undefined) {
      resolved.shoot = msg.shoot;
    }
    else {
      resolved.shoot = false
    }

    return resolved;
    }
};

class BallShooterResponse {
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
    // Serializes a message object of type BallShooterResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BallShooterResponse
    let len;
    let data = new BallShooterResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrx_gazebo/BallShooterResponse';
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
    const resolved = new BallShooterResponse(null);
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
  Request: BallShooterRequest,
  Response: BallShooterResponse,
  md5sum() { return 'e8e12124716653af3165b82608274851'; },
  datatype() { return 'vrx_gazebo/BallShooter'; }
};
