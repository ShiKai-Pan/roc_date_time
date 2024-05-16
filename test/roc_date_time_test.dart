import 'package:roc_date_time/roc_date_time.dart';
import 'package:test/test.dart';

void main() {
  test('[RocDateTime] compareTo', () {
    final rocDateTime1 = RocDateTime(112, 1, 1);
    final rocDateTime2 = RocDateTime(113, 1, 1);
    final rocDateTime3 = RocDateTime(114, 1, 1);

    expect(rocDateTime1.compareTo(rocDateTime2), lessThan(0));
    expect(rocDateTime2.compareTo(rocDateTime1), greaterThan(0));
    expect(rocDateTime3.compareTo(rocDateTime3), equals(0));
  });

  test('[RocDateTime] add', () {
    final rocDateTime = RocDateTime(2022, 1, 1);
    const duration = Duration(days: 1);
    final expectedDateTime = RocDateTime(2022, 1, 2);

    expect(rocDateTime.add(duration), equals(expectedDateTime));
  });

  test('[RocDateTime] subtract', () {
    final rocDateTime = RocDateTime(2022, 1, 2);
    const duration = Duration(days: 1);
    final expectedDateTime = RocDateTime(2022, 1, 1);

    expect(rocDateTime.subtract(duration), equals(expectedDateTime));
  });

  test('[RocDateTime] difference', () {
    final rocDateTime1 = RocDateTime(2022, 1, 1);
    final rocDateTime2 = RocDateTime(2022, 1, 2);
    const expectedDifference = Duration(days: 1);

    expect(rocDateTime2.difference(rocDateTime1), equals(expectedDifference));
  });

  test('[RocDateTime] copyWith', () {
    final rocDateTime = RocDateTime(2022, 1, 1);
    final copiedDateTime = rocDateTime.copyWith(year: 2023, month: 2, day: 3);

    expect(copiedDateTime.year, equals(2023));
    expect(copiedDateTime.month, equals(2));
    expect(copiedDateTime.day, equals(3));
    expect(copiedDateTime.hour, equals(0));
    expect(copiedDateTime.minute, equals(0));
    expect(copiedDateTime.second, equals(0));
    expect(copiedDateTime.millisecond, equals(0));
    expect(copiedDateTime.microsecond, equals(0));
  });

  test('[RocDateTime] toString', () {
    final rocDateTime = RocDateTime(111, 1, 1, 12, 30, 45, 500, 0);
    const expectedString = '111-01-01 12:30:45.500';

    expect(rocDateTime.toString(), equals(expectedString));
  });

  test('[RocDateTime] equal operator', () {
    final rocDateTime1 = RocDateTime(111, 1, 1, 12, 30, 45, 500, 0);
    final rocDateTime2 = RocDateTime(111, 1, 1, 12, 30, 45, 500, 0);
    final dateTime1 = DateTime(2022, 1, 1, 12, 30, 45, 500, 0);
    final rocDateTime3 = RocDateTime(111, 1, 1, 12, 30, 45, 500, 1);

    expect(rocDateTime1 == rocDateTime2, equals(true));
    expect(rocDateTime1 == dateTime1, equals(true));
    expect(rocDateTime1 == rocDateTime3, equals(false));
  });

  test('[RocDateTime] toDateTime', () {
    final rocDateTime = RocDateTime(111, 1, 1, 12, 30, 45, 500, 0);
    final dateTime = DateTime(2022, 1, 1, 12, 30, 45, 500, 0);

    expect(rocDateTime.toDateTime(), equals(dateTime));
  });
}
