Language: [English](README.md) | [中文](README-Zh_TW.md)

---

# RocDateTime

RocDateTime is a Dart package that provides a custom DateTime class for displaying dates in the Republic of China (ROC) calendar. This package allows developers to easily work with ROC years in their applications.

## Features

- Inherits from Dart's `DateTime` class and overrides the year display to show the ROC year.
- Provides methods to convert from `DateTime` to `RocDateTime`.
- Supports formatted output of date and time.

## SetUp

Add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  roc_date_time: ^1.0.0
```
Then run `pub get` to fetch the dependency.

## Usage Example
```dart
import 'package:roc_date_time/roc_date_time.dart';

void main() {
  // Create an instance of RocDateTime for the current time
  DateTime now = DateTime.now();
  RocDateTime rocDateTime = RocDateTime.fromDateTime(now);
  print('ROC DateTime: ${rocDateTime.toString()}');

  // Create an instance of RocDateTime for a specific date
  RocDateTime specificDate = RocDateTime(110, 5, 16);
  print('Specific ROC DateTime: ${specificDate.toString()}');
}
```

## API

### RocDateTime

#### Properties

- `int year`: ROC year
- `int month`: Month (1-12)
- `int day`: Day (1-31)
- `int hour`: Hour (0-23)
- `int minute`: Minute (0-59)
- `int second`: Second (0-59)
- `int millisecond`: Millisecond (0-999)
- `int microsecond`: Microsecond (0-999999)

#### Methods

- `RocDateTime.fromDateTime(DateTime dateTime)`: Creates an instance of `RocDateTime` from a `DateTime`.
- `RocDateTime(int year, [int month = 1, int day = 1, int hour = 0, int minute = 0, int second = 0, int millisecond = 0, int microsecond = 0])`: Creates an instance of `RocDateTime` for the specified date and time.
- `RocDateTime copyWith({int? year, int? month, int? day, int? hour, int? minute, int? second, int? millisecond, int? microsecond})`: Returns a new `RocDateTime` instance with the given properties updated.
- `DateTime toDateTime()`: Converts the `RocDateTime` instance back to a `DateTime`.

## License

This project is licensed under the BSD-3-Clause License. See the [LICENSE](LICENSE) file for details.
```