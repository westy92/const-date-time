class ConstDateTime implements DateTime {
  const ConstDateTime(int millisecondsSinceEpoch, {bool isUtc = false})
      : _millisecondsSinceEpoch = millisecondsSinceEpoch, _isUtc = isUtc;
  final int _millisecondsSinceEpoch;
  final bool _isUtc;

  DateTime get dateTime => DateTime.fromMillisecondsSinceEpoch(
      _millisecondsSinceEpoch, isUtc: _isUtc);

  @override
  DateTime add(Duration duration) {
    return dateTime.add(duration);
  }

  @override
  int compareTo(DateTime other) {
    return dateTime.compareTo(other);
  }

  @override
  int get day => dateTime.day;

  @override
  Duration difference(DateTime other) {
    return dateTime.difference(other);
  }

  @override
  int get hashCode => dateTime.hashCode;

  @override
  int get hour => dateTime.hour;

  @override
  bool isAfter(DateTime other) {
    return dateTime.isAfter(other);
  }

  @override
  bool isAtSameMomentAs(DateTime other) {
    return dateTime.isAtSameMomentAs(other);
  }

  @override
  bool isBefore(DateTime other) {
    return dateTime.isBefore(other);
  }

  @override
  bool get isUtc => dateTime.isUtc;

  @override
  int get microsecond => dateTime.microsecond;

  @override
  int get microsecondsSinceEpoch => dateTime.microsecondsSinceEpoch;

  @override
  int get millisecond => dateTime.millisecond;

  @override
  int get millisecondsSinceEpoch => dateTime.millisecondsSinceEpoch;

  @override
  int get minute => dateTime.minute;

  @override
  int get month => dateTime.month;

  @override
  int get second => dateTime.second;

  @override
  DateTime subtract(Duration duration) {
    return dateTime.subtract(duration);
  }

  @override
  String get timeZoneName => dateTime.timeZoneName;

  @override
  Duration get timeZoneOffset => dateTime.timeZoneOffset;

  @override
  String toIso8601String() {
    return dateTime.toIso8601String();
  }

  @override
  DateTime toLocal() {
    return dateTime.toLocal();
  }

  @override
  DateTime toUtc() {
    return dateTime.toUtc();
  }

  @override
  int get weekday => dateTime.weekday;

  @override
  int get year => dateTime.year;

  @override
  bool operator ==(Object other) {
    return dateTime == other;
  }
}
