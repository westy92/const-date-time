import 'package:const_date_time/src/const_date_time.dart';
import 'package:const_date_time/src/to_const_date_time.dart';
import 'package:test/test.dart';

void main() {
  group('ConstDateTimeExtension', () {
    test('must convert to normal ConstDateTime', () async {
      final dateTime = DateTime(2024, 12, 31, 23, 59, 51, 991, 999);

      final constDateTime = dateTime.toConstDateTime();
      expect(constDateTime,
          const ConstDateTime(2024, 12, 31, 23, 59, 51, 991, 999));
      expect(constDateTime.isUtc, false);
    });

    test('must convert to utc ConstDateTime', () async {
      final dateTime = DateTime.utc(2024, 12, 31, 23, 59, 51, 991, 999);

      final constDateTime = dateTime.toConstDateTime();
      expect(constDateTime,
          const ConstDateTime.utc(2024, 12, 31, 23, 59, 51, 991, 999));
      expect(constDateTime.isUtc, true);
    });
  });
}
