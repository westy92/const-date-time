import 'package:const_date_time/const_date_time.dart';
import 'package:test/test.dart';

const bool _kIsWeb = identical(0, 0.0);

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

    test('subtract', () {
      var constDateTime = const ConstDateTime.fromMillisecondsSinceEpoch(0)
          .subtract(Duration(seconds: 5));
      var dateTime =
          DateTime.fromMillisecondsSinceEpoch(0).subtract(Duration(seconds: 5));
      expect(constDateTime == dateTime, isTrue);
      expect(dateTime == constDateTime, isTrue);
    });

    test('compareTo', () {
      var constDateTime = const ConstDateTime.fromMillisecondsSinceEpoch(0);
      var dateTime = DateTime.fromMillisecondsSinceEpoch(0);
      expect(constDateTime.compareTo(dateTime) == 0, isTrue);
      expect(dateTime.compareTo(constDateTime) == 0, isTrue);
    });

    test('difference', () {
      var start = const ConstDateTime.fromMillisecondsSinceEpoch(0);
      var end = const ConstDateTime.fromMillisecondsSinceEpoch(0)
          .add(Duration(hours: -5));
      expect(start.difference(end).inHours == 5, isTrue);
    });

    test('difference with DateTime', () {
      final d1 = DateTime(2022, 11, 11, 0);
      final d2 = const ConstDateTime(2022, 11, 11, 1);
      const delta = Duration(hours: 1);
      expect(d1.difference(d2), -delta);
      expect(d2.difference(d1), delta);
    });

    test('isAfter', () {
      var start = const ConstDateTime.fromMillisecondsSinceEpoch(0);
      var end = const ConstDateTime.fromMillisecondsSinceEpoch(0)
          .add(Duration(hours: -5));
      expect(start.isAfter(end), isTrue);
      expect(start.isAfter(start), isFalse);
    });

    test('isBefore', () {
      var start = const ConstDateTime.fromMillisecondsSinceEpoch(0);
      var end = const ConstDateTime.fromMillisecondsSinceEpoch(0)
          .add(Duration(hours: 5));
      expect(start.isBefore(end), isTrue);
      expect(start.isBefore(start), isFalse);
    });

    test('isAtSameMomentAs', () {
      var start = const ConstDateTime.fromMillisecondsSinceEpoch(0);
      var end = const ConstDateTime.fromMillisecondsSinceEpoch(0)
          .add(Duration(hours: 5));
      expect(start.isAtSameMomentAs(end), isFalse);
      expect(start.isAtSameMomentAs(start), isTrue);
    });

    test('toUtc', () {
      var constDateTime = const ConstDateTime.utc(0);
      expect(constDateTime.toUtc() == constDateTime, isTrue);
    });

    test('toLocal', () {
      var constDateTime = const ConstDateTime(0);
      expect(constDateTime.toLocal() == constDateTime, isTrue);
    });

    test('toLocal', () {
      var constDateTime = const ConstDateTime(1);
      print(constDateTime.toIso8601String());
      expect(
          constDateTime.toIso8601String() == '0001-01-01T00:00:00.000', isTrue);
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
      expect(constDateTime.year, 0);
      expect(constDateTime.month, 1);
      expect(constDateTime.day, 2);
      expect(constDateTime.hour, 3);
      expect(constDateTime.minute, 4);
      expect(constDateTime.second, 5);
      expect(constDateTime.millisecond, 6);
      expect(constDateTime.microsecond, _kIsWeb ? 0 : 7);
    });

    test('millisecondsSinceEpoch', () {
      const ms = 12345;
      const constDateTime = ConstDateTime.fromMillisecondsSinceEpoch(ms);
      expect(constDateTime.millisecondsSinceEpoch == ms, isTrue);
    });

    test('weekday', () {
      const constDateTime = ConstDateTime(2022, 11, 8);
      expect(constDateTime.weekday == DateTime.tuesday, isTrue);
    });

    test('timezone', () {
      const constDateTime = ConstDateTime.utc(2022, 1, 1);
      expect(constDateTime.timeZoneName == 'UTC', isTrue);
      expect(constDateTime.timeZoneOffset.inHours == 0, isTrue);
      expect(constDateTime.timeZoneOffset.inMinutes == 0, isTrue);
    });
  });
}
