import 'package:flutter/widgets.dart';

class ScreenSizeUtil {
  /// Init in the MaterialApp
  static late BuildContext context;

  static get screenWidth => MediaQuery.of(context).size.width;

  static get screenHeight => MediaQuery.of(context).size.height;
}

extension SizeExtension on num {
  /// get valuue based on context width
  double get cw => ScreenSizeUtil.screenWidth * this;

  /// get valuue based on context height
  double get ch => ScreenSizeUtil.screenHeight * this;
}

/// Example
/// ```dart
/// class YourWidget extends StatelessWidget {
///   const YourWidget({super.key});

///   @override
///   Widget build(BuildContext context) {
///     // Adapt according your context
///     return SizedBox(
///       height: 01.ch,
///       width: 0.2.cw,
///     );
///   }
/// }
/// ```dart
