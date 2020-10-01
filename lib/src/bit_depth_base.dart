

import 'dart:typed_data';

/// Checks if you are awesome. Spoiler: you are.

abstract class Number
{
  ByteData _data;
  dynamic GetValue();

}

class Int8 extends Number
{
  Int8(int val)
  {
    _data = new ByteData(1);
    _data.setInt8(0, val);
  }
  void SetValue(int val) {
    _data.setInt8(0, val);
  }

  @override
  int GetValue() {
    return _data.getInt8(0);
  }
}

class Int16 extends Number
{
  Int16(int val)
  {
    _data = new ByteData(2);
    _data.setInt16(0, val);
  }
  void SetValue(int val) {
    _data.setInt16(0, val);
  }

  @override
  int GetValue() {
    return _data.getInt16(0);
  }
}

class Int32 extends Number
{
  Int32(int val)
  {
    _data = new ByteData(4);
    _data.setInt32(0, val);
  }
  void SetValue(int val) {
    _data.setInt32(0, val);
  }

  @override
  int GetValue() {
    return _data.getInt32(0);
  }
}

class Int64 extends Number
{
  Int64(int val)
  {
    _data = new ByteData(8);
    _data.setInt64(0, val);
  }
  void SetValue(int val) {
    _data.setInt64(0, val);
  }

  @override
  int GetValue() {
    return _data.getInt64(0);
  }
}

class Float extends Number
{
  Float(double val)
  {
    _data = new ByteData(4);
    _data.setFloat32(0, val);
  }
  void SetValue(double val) {
    _data.setFloat32(0, val);
  }

  @override
  double GetValue() {
    return _data.getFloat32(0);
  }
}
