import 'package:const_date_time/const_date_time.dart';

void main() {
  final constDateTime = const ConstDateTime(0);
  // you can pass a ConstDateTime where a DateTime is expected!
  printDate(constDateTime);
}

void printDate(DateTime dateTime) {
  print(dateTime.toIso8601String());
}
