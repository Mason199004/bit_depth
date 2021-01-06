

import 'dart:typed_data';


///Base Number Class
abstract class Number
{
  ///Determines whether an exception should be thrown on overflow and underflow
  static bool should_throw = false;
  ByteData _data;
  dynamic GetValue();

}

class IntegerException implements Exception
{
  String _message;

  IntegerException([String message = 'Invalid value']) {
    this._message = message;
  }

  @override
  String toString() {
    return _message;
  }
}

class IntegerOverflowException extends IntegerException
{
  IntegerOverflowException(String message)
  {
    _message = message;
  }
}

class IntegerUnderflowException extends IntegerException
{
  IntegerUnderflowException(String message)
  {
    _message = message;
  }
}

///8 bit Signed Integer
class Int8_t extends Number
{
  Int8_t(int val)
  {
    // ignore: prefer_single_quotes
    if (Number.should_throw && (val > 127)) {throw IntegerOverflowException("${val} is greater than 8 bits!");}
    if (Number.should_throw && (val < -128)) {throw IntegerUnderflowException("${val} is greater than 8 bits!");}
    _data = new ByteData(1);
    _data.setInt8(0, val);
  }
  void SetValue(int val) {
    if (Number.should_throw && (val > 127)) {throw IntegerOverflowException("${val} is greater than 8 bits!");}
    if (Number.should_throw && (val < -128)) {throw IntegerUnderflowException("${val} is greater than 8 bits!");}
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
    if (Number.should_throw && (val > 32767)) {throw IntegerOverflowException("${val} is greater than 16 bits!");}
    if (Number.should_throw && (val < -32768)) {throw IntegerUnderflowException("${val} is greater than 16 bits!");}
    _data = new ByteData(2);
    _data.setInt16(0, val);
  }
  void SetValue(int val) {
    if (Number.should_throw && (val > 32767)) {throw IntegerOverflowException("${val} is greater than 16 bits!");}
    if (Number.should_throw && (val < -32768)) {throw IntegerUnderflowException("${val} is greater than 16 bits!");}
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


  Int32_t(int val)
  {
    if (Number.should_throw && (val > 2147483647)) {throw IntegerOverflowException("${val} is greater than 32 bits!");}
    if (Number.should_throw && (val < -2147483648)) {throw IntegerUnderflowException("${val} is greater than 32 bits!");}
    _data = new ByteData(4);
    _data.setInt32(0, val);
  }
  void SetValue(int val) {
    if (Number.should_throw && (val > 2147483647)) {throw IntegerOverflowException("${val} is greater than 32 bits!");}
    if (Number.should_throw && (val < -2147483648)) {throw IntegerUnderflowException("${val} is greater than 32 bits!");}
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
    if (Number.should_throw && (val > 9223372036854775807)) {throw IntegerOverflowException("${val} is greater than 64 bits!");}
    if (Number.should_throw && (val < -9223372036854775808)) {throw IntegerUnderflowException("${val} is greater than 64 bits!");}
    _data = new ByteData(8);
    _data.setInt64(0, val);
  }
  void SetValue(int val) {
    if (Number.should_throw && (val > 9223372036854775807)) {throw IntegerOverflowException("${val} is greater than 64 bits!");}
    if (Number.should_throw && (val < -9223372036854775808)) {throw IntegerUnderflowException("${val} is greater than 64 bits!");}
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
