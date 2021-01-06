

import 'dart:typed_data';


///Base Number Class
abstract class Number
{
  ByteData _data;
  dynamic GetValue();

}
///8 bit Signed Integer
class Int8_t extends Number
{
  Int8_t(int val)
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
///16 bit Signed Integer
class Int16_t extends Number
{
  Int16_t(int val)
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
///32 bit Signed Integer
class Int32_t extends Number
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
///64 bit Signed Integer
class Int64_t extends Number
{
  Int64_t(int val)
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
///32 bit Floating point
class Float32_t extends Number
{
  Float32_t(double val)
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
