class RocDateTime extends DateTime {
  static const int monday = DateTime.monday;
  static const int tuesday = DateTime.tuesday;
  static const int wednesday = DateTime.wednesday;
  static const int thursday = DateTime.thursday;
  static const int friday = DateTime.friday;
  static const int saturday = DateTime.saturday;
  static const int sunday = DateTime.sunday;
  static const int daysPerWeek = DateTime.daysPerWeek;

  static const int january = DateTime.january;
  static const int february = DateTime.february;
  static const int march = DateTime.march;
  static const int april = DateTime.april;
  static const int may = DateTime.may;
  static const int june = DateTime.june;
  static const int july = DateTime.july;
  static const int august = DateTime.august;
  static const int september = DateTime.september;
  static const int october = DateTime.october;
  static const int november = DateTime.november;
  static const int december = DateTime.december;
  static const int monthsPerYear = DateTime.monthsPerYear;

  static RocDateTime now() => RocDateTime.fromDateTime(DateTime.now());

  RocDateTime.fromDateTime(DateTime dateTime)
      : super(
          dateTime.year,
          dateTime.month,
          dateTime.day,
          dateTime.hour,
          dateTime.minute,
          dateTime.second,
          dateTime.millisecond,
          dateTime.microsecond,
        );

  RocDateTime(
    int year, [
    int month = 1,
    int day = 1,
    int hour = 0,
    int minute = 0,
    int second = 0,
    int millisecond = 0,
    int microsecond = 0,
  ]) : super(
          year + 1911,
          month,
          day,
          hour,
          minute,
          second,
          millisecond,
          microsecond,
        );

  @override
  int get year => super.year - 1911;

  RocDateTime copyWith({
    int? year,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
    int? microsecond,
  }) =>
      RocDateTime(
        year ?? this.year,
        month ?? this.month,
        day ?? this.day,
        hour ?? this.hour,
        minute ?? this.minute,
        second ?? this.second,
        millisecond ?? this.millisecond,
        microsecond ?? this.microsecond,
      );

  @override
  String toString() {
    return "$year-${month.toString().padLeft(2, '0')}-${day.toString().padLeft(2, '0')} ${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}:${second.toString().padLeft(2, '0')}.${millisecond.toString().padLeft(3, '0')}";
  }

  DateTime toDateTime() => DateTime(
        year + 1911,
        month,
        day,
        hour,
        minute,
        second,
        millisecond,
        microsecond,
      );
}
