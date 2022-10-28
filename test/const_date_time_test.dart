import 'package:const_date_time/const_date_time.dart';
import 'package:test/test.dart';

void main() {
  group('Test methods', () {
    test('operator ==', () {
      var constDateTime = ConstDateTime(0);
      var dateTime = DateTime.fromMillisecondsSinceEpoch(0);
      expect(constDateTime == dateTime, isTrue);
      expect(dateTime == constDateTime, isTrue);

      constDateTime = ConstDateTime(0, isUtc: true);
      dateTime = DateTime.fromMillisecondsSinceEpoch(0, isUtc: true);
      expect(constDateTime == dateTime, isTrue);
      expect(dateTime == constDateTime, isTrue);

      constDateTime = ConstDateTime(0);
      dateTime = DateTime.fromMillisecondsSinceEpoch(123);
      expect(constDateTime == dateTime, isFalse);
      expect(dateTime == constDateTime, isFalse);
    });
  });

  group('Test getters', () {
    test('hashCode', () {
      var constDateTime = ConstDateTime(0);
      var dateTime = DateTime.fromMillisecondsSinceEpoch(0);
      expect(constDateTime.hashCode == dateTime.hashCode, isTrue);

      constDateTime = ConstDateTime(0, isUtc: true);
      dateTime = DateTime.fromMillisecondsSinceEpoch(0, isUtc: true);
      expect(constDateTime.hashCode == dateTime.hashCode, isTrue);

      constDateTime = ConstDateTime(0);
      dateTime = DateTime.fromMillisecondsSinceEpoch(123);
      expect(constDateTime.hashCode == dateTime.hashCode, isFalse);
    });
  });
}
