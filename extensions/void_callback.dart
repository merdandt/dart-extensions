import 'package:flutter/foundation.dart';

extension DelayedCall on VoidCallback {
  Future<void> delayedCall(Duration duration) =>
      Future<void>.delayed(duration, this);
}

///  Example
/// ```dart
/// class _MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
///   late AnimationController _clockWiseAnimationController;
/// 
///   @override
///   void initState() {
///     _clockWiseAnimationController = AnimationController(
///       vsync: this,
///       duration: const Duration(seconds: 1),
///     );
/// 
///     // we call out extension on forward function to
///     // add a delay to the function
///     _clockWiseAnimationController.forward.delayedCall(
///       const Duration(seconds: 2),
///     );
///     super.initState();
///   }
/// ```dart

