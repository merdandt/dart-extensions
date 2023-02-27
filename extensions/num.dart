import 'package:flutter/widgets.dart';

class ScreenSizeUtil {
  ScreenSizeUtil(this.context);

  /// Init in the MaterialApp
  final BuildContext context;

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
///       height: 0.1.ch,
///       width: 0.2.cw,
///     );
///   }
/// }
/// ```dart

extension EmptySpaceExtension on num{
  Widget get boxH => SizedBox(height: toDouble());
  Widget get boxW => SizedBox(width: toDouble());
}

/// Example
/// ```dart
/// class YourWidget extends StatelessWidget {
///   const YourWidget({super.key});

///   @override
///   Widget build(BuildContext context) {
///     return Column(
///        children: [
///        Text('data'),
///        // Returns a SizedBox which height is 20
///        20.boxH,   
///        Text('data'),   
///       ]
///       height: 0.1.ch,
///       width: 0.2.cw,
///     );
///   }
/// }
/// ```dart
