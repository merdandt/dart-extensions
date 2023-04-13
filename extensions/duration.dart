import 'dart:core';

extension DurationFromInt on int {
  ///
  /// For getting duration in microseconds from integer value
  ///
  Duration get microseconds => Duration(microseconds: this);

  ///
  /// For getting duration in milliseconds from integer value
  ///
  Duration get milliseconds => Duration(milliseconds: this);

  ///
  /// For getting duration in seconds from integer value
  ///
  Duration get seconds => Duration(seconds: this);

  ///
  /// For getting duration in minutes from integer value
  ///
  Duration get minutes => Duration(minutes: this);

  ///
  /// For getting duration in hours from integer value
  ///
  Duration get hours => Duration(hours: this);

  ///
  /// For getting duration in days from integer value
  ///
  Duration get days => Duration(days: this);
}

/// Example
/// ```dart
/// var duration = 15.seconds;
/// ```
