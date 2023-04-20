import 'package:flutter/material.dart';

extension SliverExtensions on Widget {
  SliverToBoxAdapter toSliver() => SliverToBoxAdapter(child: this);
}



/// Example
///
/// class YourWidget extends StatelessWidget {
///   const YourWidget({super.key});
///   ``` @override
///  @override
/// Widget build(BuildContext context) {
///   return const Scaffold(
///     body: CustomScrollView(
///       slivers: [
///         YourWidget().toSliver(),
///       ],
///     ),
///   );
/// }
/// ```dart