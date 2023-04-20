import 'package:flutter/material.dart';

extension ThemeExtensions on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
  ThemeData get theme => Theme.of(this);
}


/// Example
///
/// class YourWidget extends StatelessWidget {
///   const YourWidget({super.key});
///   ``` @override
///   Widget build(BuildContext context) {
///     return Text(
///      'dummy text',
///     style: context.textTheme.bodyLarge
///     );
///   }
/// }
/// ```dart
 

/// Example
///
/// class YourWidget extends StatelessWidget {
///   const YourWidget({super.key});
///   ``` @override
///   Widget build(BuildContext context) {
///     return ColoredBox(
///           color: context.theme.primaryColor
///      );
///   }
/// }
/// ```dart