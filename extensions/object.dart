import 'dart:developer' as devtools show log;

extension Log on Object {
  void log() => devtools.log(toString());
}

///  Example
/// ```dart
/// void main() {
///   'void main started'.log();
///   final value = 10.0;
///   value.log();
/// }
///  ```