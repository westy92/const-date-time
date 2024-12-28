import 'package:const_date_time/const_date_time.dart';

extension ConstDateTimeExtension on DateTime {
  ConstDateTime toConstDateTime() {
    if (isUtc) {
      return ConstDateTime.utc(
          year, month, day, hour, minute, second, millisecond, microsecond);
    }

    return ConstDateTime(
        year, month, day, hour, minute, second, millisecond, microsecond);
  }
}
