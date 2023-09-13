# const_date_time

[![Build Status](https://github.com/westy92/const-date-time/actions/workflows/github-actions.yml/badge.svg)](https://github.com/westy92/const-date-time/actions/workflows/github-actions.yml?query=branch%3Amain)
[![Code Coverage](https://codecov.io/gh/westy92/const-date-time/branch/main/graph/badge.svg)](https://codecov.io/gh/westy92/const-date-time)
[![Funding Status](https://img.shields.io/github/sponsors/westy92)](https://github.com/sponsors/westy92)

A drop-in replacement for Dart's `DateTime` class with `const` constructors.

## Getting started

Install the package:

```bash
flutter pub add const_date_time
```

or

```bash
dart pub add const_date_time
```

## Usage

You can use a `ConstDateTime` anywhere a `DateTime` is expected. All major `DateTime` constructors have a `const` version.

```dart
import 'package:const_date_time/const_date_time.dart';

// const constructors
final year = const ConstDateTime(2022);
final date = const ConstDateTime(2022, 10, 27);
final dateTime = const ConstDateTime(2022, 10, 27, 12, 34, 56, 789, 10);

final yearUtc = const ConstDateTime.utc(2022);
final dateUtc = const ConstDateTime.utc(2022, 10, 27);
final dateTimeUtc = const ConstDateTime.utc(2022, 10, 27, 12, 34, 56, 789, 1011);

final ms = const ConstDateTime.fromMillisecondsSinceEpoch(1666931562000);
final msUtc = const ConstDateTime.fromMillisecondsSinceEpoch(1666931562000, isUtc: true);

final us = const ConstDateTime.fromMicrosecondsSinceEpoch(1666931562000000);
final usUtc = const ConstDateTime.fromMicrosecondsSinceEpoch(1666931562000000, isUtc: true);
```

You can access the underlying `DateTime` object directly:

```dart
final cdt = const ConstDateTime(2022);
final DateTime dt = cdt.dateTime;
// other getters are available as well:
final int dtYear = dt.year;
final int dtWeekday = dt.weekday;
```

Don't forget other `DateTime` methods too!

```dart
final constDateTime = const ConstDateTime(2022);

constDateTime.add(Duration(minutes: 5));
constDateTime.toIso8601String();
```

## Sponsor

Please consider [sponsoring my work](https://github.com/sponsors/westy92) to ensure this library receives the attention it deserves.

## License

const_date_time is released under the MIT License.
