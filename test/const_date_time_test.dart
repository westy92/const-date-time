import 'package:const_date_time/const_date_time.dart';
import 'package:test/test.dart';

void main() {
  group('Test constructors', () {
    test('default', () {
      var constDateTime = const ConstDateTime(0, 1, 2, 3, 4, 5, 6, 7);
      var dateTime = DateTime(0, 1, 2, 3, 4, 5, 6, 7);
      expect(constDateTime == dateTime, isTrue);
      expect(dateTime == constDateTime, isTrue);
    });

    test('utc', () {
      var constDateTime = const ConstDateTime.utc(0, 1, 2, 3, 4, 5, 6, 7);
      var dateTime = DateTime.utc(0, 1, 2, 3, 4, 5, 6, 7);
      expect(constDateTime == dateTime, isTrue);
      expect(dateTime == constDateTime, isTrue);
    });

    test('fromMillisecondsSinceEpoch', () {
      var constDateTime =
          const ConstDateTime.fromMillisecondsSinceEpoch(12345678);
      var dateTime = DateTime.fromMillisecondsSinceEpoch(12345678);
      expect(constDateTime == dateTime, isTrue);
      expect(dateTime == constDateTime, isTrue);

      constDateTime =
          const ConstDateTime.fromMillisecondsSinceEpoch(12345678, isUtc: true);
      dateTime = DateTime.fromMillisecondsSinceEpoch(12345678, isUtc: true);
      expect(constDateTime == dateTime, isTrue);
      expect(dateTime == constDateTime, isTrue);
    });

    test('fromMicrosecondsSinceEpoch', () {
      var constDateTime =
          const ConstDateTime.fromMicrosecondsSinceEpoch(12345678);
      var dateTime = DateTime.fromMicrosecondsSinceEpoch(12345678);
      expect(constDateTime == dateTime, isTrue);
      expect(dateTime == constDateTime, isTrue);

      constDateTime =
          const ConstDateTime.fromMicrosecondsSinceEpoch(12345678, isUtc: true);
      dateTime = DateTime.fromMicrosecondsSinceEpoch(12345678, isUtc: true);
      expect(constDateTime == dateTime, isTrue);
      expect(dateTime == constDateTime, isTrue);
    });
  });

  group('Test methods', () {
    test('operator ==', () {
      var constDateTime = const ConstDateTime.fromMillisecondsSinceEpoch(0);
      var dateTime = DateTime.fromMillisecondsSinceEpoch(0);
      expect(constDateTime == dateTime, isTrue);
      expect(dateTime == constDateTime, isTrue);

      constDateTime =
          const ConstDateTime.fromMillisecondsSinceEpoch(0, isUtc: true);
      dateTime = DateTime.fromMillisecondsSinceEpoch(0, isUtc: true);
      expect(constDateTime == dateTime, isTrue);
      expect(dateTime == constDateTime, isTrue);

      constDateTime = const ConstDateTime.fromMillisecondsSinceEpoch(0);
      dateTime = DateTime.fromMillisecondsSinceEpoch(123);
      expect(constDateTime == dateTime, isFalse);
      expect(dateTime == constDateTime, isFalse);
    });

    test('add', () {
      var constDateTime = const ConstDateTime.fromMillisecondsSinceEpoch(0)
          .add(Duration(seconds: 5));
      var dateTime =
          DateTime.fromMillisecondsSinceEpoch(0).add(Duration(seconds: 5));
      expect(constDateTime == dateTime, isTrue);
      expect(dateTime == constDateTime, isTrue);
    });

    test('coompareTo', () {
      var constDateTime = const ConstDateTime.fromMillisecondsSinceEpoch(0);
      var dateTime = DateTime.fromMillisecondsSinceEpoch(0);
      expect(constDateTime.compareTo(dateTime) == 0, isTrue);
      expect(dateTime.compareTo(constDateTime) == 0, isTrue);
    });
  });

  group('Test getters', () {
    test('hashCode', () {
      var constDateTime = const ConstDateTime.fromMillisecondsSinceEpoch(0);
      var dateTime = DateTime.fromMillisecondsSinceEpoch(0);
      expect(constDateTime.hashCode == dateTime.hashCode, isTrue);

      constDateTime =
          const ConstDateTime.fromMillisecondsSinceEpoch(0, isUtc: true);
      dateTime = DateTime.fromMillisecondsSinceEpoch(0, isUtc: true);
      expect(constDateTime.hashCode == dateTime.hashCode, isTrue);

      constDateTime = const ConstDateTime.fromMillisecondsSinceEpoch(0);
      dateTime = DateTime.fromMillisecondsSinceEpoch(123);
      expect(constDateTime.hashCode == dateTime.hashCode, isFalse);
    });

    test('date components', () {
      var constDateTime = const ConstDateTime(0, 1, 2, 3, 4, 5, 6, 7);
      expect(constDateTime.year == 0, isTrue);
      expect(constDateTime.month == 1, isTrue);
      expect(constDateTime.day == 2, isTrue);
      expect(constDateTime.hour == 3, isTrue);
      expect(constDateTime.minute == 4, isTrue);
      expect(constDateTime.second == 5, isTrue);
      expect(constDateTime.millisecond == 6, isTrue);
      expect(constDateTime.microsecond == 7, isTrue);
    });
  });
}
