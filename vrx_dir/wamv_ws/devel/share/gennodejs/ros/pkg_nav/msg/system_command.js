// Auto-generated. Do not edit!

// (in-package pkg_nav.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class system_command {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num = null;
      this.runCommand = null;
      this.runResult = null;
      this.result = null;
      this.percent_complete = null;
      this.runState = null;
    }
    else {
      if (initObj.hasOwnProperty('num')) {
        this.num = initObj.num
      }
      else {
        this.num = 0;
      }
      if (initObj.hasOwnProperty('runCommand')) {
        this.runCommand = initObj.runCommand
      }
      else {
        this.runCommand = 0;
      }
      if (initObj.hasOwnProperty('runResult')) {
        this.runResult = initObj.runResult
      }
      else {
        this.runResult = 0;
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('percent_complete')) {
        this.percent_complete = initObj.percent_complete
      }
      else {
        this.percent_complete = 0.0;
      }
      if (initObj.hasOwnProperty('runState')) {
        this.runState = initObj.runState
      }
      else {
        this.runState = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type system_command
    // Serialize message field [num]
    bufferOffset = _serializer.int8(obj.num, buffer, bufferOffset);
    // Serialize message field [runCommand]
    bufferOffset = _serializer.int8(obj.runCommand, buffer, bufferOffset);
    // Serialize message field [runResult]
    bufferOffset = _serializer.int8(obj.runResult, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [percent_complete]
    bufferOffset = _serializer.float64(obj.percent_complete, buffer, bufferOffset);
    // Serialize message field [runState]
    bufferOffset = _serializer.int8(obj.runState, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type system_command
    let len;
    let data = new system_command(null);
    // Deserialize message field [num]
    data.num = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [runCommand]
    data.runCommand = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [runResult]
    data.runResult = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [percent_complete]
    data.percent_complete = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [runState]
    data.runState = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pkg_nav/system_command';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c7aa14445a81b855618c21fd7dfb6225';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Define the goal
    # nav_msgs/Path local_path  
    int8 num  #test -cyb
    int8 runCommand
    
    # ---
    # Define the result
    int8  runResult  # #  -1：处理失败  0 : 未处理     1：正在处理   2：处理完成  
    int32 result #test -cyb
    
    # ---
    # Define a feedback message 
    float64 percent_complete  # [0-100]   处理进度 
    int8    runState  #  -1：处理失败  0 : 未处理     1：正在处理   2：处理完成 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new system_command(null);
    if (msg.num !== undefined) {
      resolved.num = msg.num;
    }
    else {
      resolved.num = 0
    }

    if (msg.runCommand !== undefined) {
      resolved.runCommand = msg.runCommand;
    }
    else {
      resolved.runCommand = 0
    }

    if (msg.runResult !== undefined) {
      resolved.runResult = msg.runResult;
    }
    else {
      resolved.runResult = 0
    }

    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.percent_complete !== undefined) {
      resolved.percent_complete = msg.percent_complete;
    }
    else {
      resolved.percent_complete = 0.0
    }

    if (msg.runState !== undefined) {
      resolved.runState = msg.runState;
    }
    else {
      resolved.runState = 0
    }

    return resolved;
    }
};

module.exports = system_command;
