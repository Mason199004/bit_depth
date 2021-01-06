import 'package:bit_depth/bit_depth.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {


    setUp(() {

    });

    test('First Test', () {
        assert(Int8_t(127).GetValue() == 127);
        assert(Int16_t(32767).GetValue() == 32767);
        assert(Int32_t(2147483647).GetValue() == 2147483647);
        assert(Int64_t(9223372036854775807).GetValue() == 9223372036854775807);
        assert(Int64_t(7) is Number);
        Number.should_throw = true;
        assert(Int8_t(127).GetValue() == 127);
        assert(Int16_t(32767).GetValue() == 32767);
        assert(Int32_t(2147483647).GetValue() == 2147483647);
        assert(Int64_t(9223372036854775807).GetValue() == 9223372036854775807);
        assert(Int64_t(7) is Number);

        expect(() => Int8_t(255), throwsA(TypeMatcher<IntegerOverflowException>()));
        expect(() => Int8_t(-255), throwsA(TypeMatcher<IntegerUnderflowException>()));

    });
  });
}
