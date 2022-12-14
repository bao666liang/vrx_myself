# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from vrx_gazebo/Task.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy

class Task(genpy.Message):
  _md5sum = "8b3267cadc02a4d8846adeb79baa09a1"
  _type = "vrx_gazebo/Task"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# Task name.
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
"""
  __slots__ = ['name','state','ready_time','running_time','elapsed_time','remaining_time','timed_out','num_collisions','score']
  _slot_types = ['string','string','time','time','duration','duration','bool','uint32','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       name,state,ready_time,running_time,elapsed_time,remaining_time,timed_out,num_collisions,score

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Task, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.name is None:
        self.name = ''
      if self.state is None:
        self.state = ''
      if self.ready_time is None:
        self.ready_time = genpy.Time()
      if self.running_time is None:
        self.running_time = genpy.Time()
      if self.elapsed_time is None:
        self.elapsed_time = genpy.Duration()
      if self.remaining_time is None:
        self.remaining_time = genpy.Duration()
      if self.timed_out is None:
        self.timed_out = False
      if self.num_collisions is None:
        self.num_collisions = 0
      if self.score is None:
        self.score = 0.
    else:
      self.name = ''
      self.state = ''
      self.ready_time = genpy.Time()
      self.running_time = genpy.Time()
      self.elapsed_time = genpy.Duration()
      self.remaining_time = genpy.Duration()
      self.timed_out = False
      self.num_collisions = 0
      self.score = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.state
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_4I4iBId().pack(_x.ready_time.secs, _x.ready_time.nsecs, _x.running_time.secs, _x.running_time.nsecs, _x.elapsed_time.secs, _x.elapsed_time.nsecs, _x.remaining_time.secs, _x.remaining_time.nsecs, _x.timed_out, _x.num_collisions, _x.score))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.ready_time is None:
        self.ready_time = genpy.Time()
      if self.running_time is None:
        self.running_time = genpy.Time()
      if self.elapsed_time is None:
        self.elapsed_time = genpy.Duration()
      if self.remaining_time is None:
        self.remaining_time = genpy.Duration()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state = str[start:end]
      _x = self
      start = end
      end += 45
      (_x.ready_time.secs, _x.ready_time.nsecs, _x.running_time.secs, _x.running_time.nsecs, _x.elapsed_time.secs, _x.elapsed_time.nsecs, _x.remaining_time.secs, _x.remaining_time.nsecs, _x.timed_out, _x.num_collisions, _x.score,) = _get_struct_4I4iBId().unpack(str[start:end])
      self.timed_out = bool(self.timed_out)
      self.ready_time.canon()
      self.running_time.canon()
      self.elapsed_time.canon()
      self.remaining_time.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.state
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_4I4iBId().pack(_x.ready_time.secs, _x.ready_time.nsecs, _x.running_time.secs, _x.running_time.nsecs, _x.elapsed_time.secs, _x.elapsed_time.nsecs, _x.remaining_time.secs, _x.remaining_time.nsecs, _x.timed_out, _x.num_collisions, _x.score))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.ready_time is None:
        self.ready_time = genpy.Time()
      if self.running_time is None:
        self.running_time = genpy.Time()
      if self.elapsed_time is None:
        self.elapsed_time = genpy.Duration()
      if self.remaining_time is None:
        self.remaining_time = genpy.Duration()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state = str[start:end]
      _x = self
      start = end
      end += 45
      (_x.ready_time.secs, _x.ready_time.nsecs, _x.running_time.secs, _x.running_time.nsecs, _x.elapsed_time.secs, _x.elapsed_time.nsecs, _x.remaining_time.secs, _x.remaining_time.nsecs, _x.timed_out, _x.num_collisions, _x.score,) = _get_struct_4I4iBId().unpack(str[start:end])
      self.timed_out = bool(self.timed_out)
      self.ready_time.canon()
      self.running_time.canon()
      self.elapsed_time.canon()
      self.remaining_time.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4I4iBId = None
def _get_struct_4I4iBId():
    global _struct_4I4iBId
    if _struct_4I4iBId is None:
        _struct_4I4iBId = struct.Struct("<4I4iBId")
    return _struct_4I4iBId
