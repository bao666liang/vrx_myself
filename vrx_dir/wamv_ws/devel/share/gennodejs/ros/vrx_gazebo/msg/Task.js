// Auto-generated. Do not edit!

// (in-package vrx_gazebo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Task {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.state = null;
      this.ready_time = null;
      this.running_time = null;
      this.elapsed_time = null;
      this.remaining_time = null;
      this.timed_out = null;
      this.num_collisions = null;
      this.score = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
      if (initObj.hasOwnProperty('ready_time')) {
        this.ready_time = initObj.ready_time
      }
      else {
        this.ready_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('running_time')) {
        this.running_time = initObj.running_time
      }
      else {
        this.running_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('elapsed_time')) {
        this.elapsed_time = initObj.elapsed_time
      }
      else {
        this.elapsed_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('remaining_time')) {
        this.remaining_time = initObj.remaining_time
      }
      else {
        this.remaining_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('timed_out')) {
        this.timed_out = initObj.timed_out
      }
      else {
        this.timed_out = false;
      }
      if (initObj.hasOwnProperty('num_collisions')) {
        this.num_collisions = initObj.num_collisions
      }
      else {
        this.num_collisions = 0;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Task
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    // Serialize message field [ready_time]
    bufferOffset = _serializer.time(obj.ready_time, buffer, bufferOffset);
    // Serialize message field [running_time]
    bufferOffset = _serializer.time(obj.running_time, buffer, bufferOffset);
    // Serialize message field [elapsed_time]
    bufferOffset = _serializer.duration(obj.elapsed_time, buffer, bufferOffset);
    // Serialize message field [remaining_time]
    bufferOffset = _serializer.duration(obj.remaining_time, buffer, bufferOffset);
    // Serialize message field [timed_out]
    bufferOffset = _serializer.bool(obj.timed_out, buffer, bufferOffset);
    // Serialize message field [num_collisions]
    bufferOffset = _serializer.uint32(obj.num_collisions, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float64(obj.score, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Task
    let len;
    let data = new Task(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ready_time]
    data.ready_time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [running_time]
    data.running_time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [elapsed_time]
    data.elapsed_time = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [remaining_time]
    data.remaining_time = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [timed_out]
    data.timed_out = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [num_collisions]
    data.num_collisions = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += _getByteLength(object.state);
    return length + 53;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vrx_gazebo/Task';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b3267cadc02a4d8846adeb79baa09a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Task name.
    string name
    
    # Task state.
    string state
    
    # Absolute sim time when this task will be in "ready" state (ROS time).
    time ready_time
    
    # Absolute sim time when this task will be in "running" state (ROS time).
    time running_time
    
    # Time elapsed since task started (ROS time). This is the current sim time
    # minus start time.
    # When the elapsed time reaches the task timeout, `timed_out` is set to true.
    duration elapsed_time
    
    # Remaining time until the task times out (ROS time).
    duration remaining_time
    
    # True if task timed out.
    bool timed_out
    
    # Number of collisions.
    uint32 num_collisions
    
    # The score.
    float64 score
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Task(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    if (msg.ready_time !== undefined) {
      resolved.ready_time = msg.ready_time;
    }
    else {
      resolved.ready_time = {secs: 0, nsecs: 0}
    }

    if (msg.running_time !== undefined) {
      resolved.running_time = msg.running_time;
    }
    else {
      resolved.running_time = {secs: 0, nsecs: 0}
    }

    if (msg.elapsed_time !== undefined) {
      resolved.elapsed_time = msg.elapsed_time;
    }
    else {
      resolved.elapsed_time = {secs: 0, nsecs: 0}
    }

    if (msg.remaining_time !== undefined) {
      resolved.remaining_time = msg.remaining_time;
    }
    else {
      resolved.remaining_time = {secs: 0, nsecs: 0}
    }

    if (msg.timed_out !== undefined) {
      resolved.timed_out = msg.timed_out;
    }
    else {
      resolved.timed_out = false
    }

    if (msg.num_collisions !== undefined) {
      resolved.num_collisions = msg.num_collisions;
    }
    else {
      resolved.num_collisions = 0
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    return resolved;
    }
};

module.exports = Task;
