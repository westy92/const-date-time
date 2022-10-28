import 'package:const_date_time/const_date_time.dart';

final year = const ConstDateTime(2022);
final date = const ConstDateTime(2022, 10, 27);
final dateTime = const ConstDateTime(2022, 10, 27, 12, 34, 56, 789, 10);

final yearUtc = const ConstDateTime.utc(2022);
final dateUtc = const ConstDateTime.utc(2022, 10, 27);
final dateTimeUtc =
    const ConstDateTime.utc(2022, 10, 27, 12, 34, 56, 789, 1011);

final ms = const ConstDateTime.fromMillisecondsSinceEpoch(1666931562000);
final msUtc =
    const ConstDateTime.fromMillisecondsSinceEpoch(1666931562000, isUtc: true);

final us = const ConstDateTime.fromMicrosecondsSinceEpoch(1666931562000000);
final usUtc = const ConstDateTime.fromMicrosecondsSinceEpoch(1666931562000000,
    isUtc: true);

final cdt = const ConstDateTime(2022);
final DateTime dt = cdt.dateTime;
final int dtYear = dt.year;
final int dtWeekday = dt.weekday;

void main() {
  final constDateTime = const ConstDateTime(0);

  constDateTime.add(Duration(minutes: 5));
  constDateTime.toIso8601String();

  // you can pass a ConstDateTime where a DateTime is expected!
  printDate(constDateTime);
}

void printDate(DateTime dateTime) {
  print(dateTime.toIso8601String());
}
