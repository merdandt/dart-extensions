import 'package:flutter/foundation.dart';

extension FunctionExample on Function {
  void onWebOnly() {
    if (kIsWeb) {
      this();
    }
  }
}
///  Example
/// ```dart
/// Future<void> configureSomething() async {
///   //fail on onther than Web
///   configureMethod();
/// }
/// 
/// void main() {
///   // now can be sure that this will work
///   // only on Web
///   configureSomething().onWebOnly();
/// }
///  ```
