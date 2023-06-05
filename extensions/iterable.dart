import 'dart:math' as math show Random;
// extension SumNumIterable<T extends num> on Iterable<T> {
//   T sum() {
//     // initialize sum
//     T sum = (T == int ? 0 : 0.0) as T;
//     // calculate sum
//     for (T current in this) {
//       sum += current;
//     }
//     return sum;
//   }
// }

/// If Iterable contains no value Dart's Iterable.first throws
/// an exception. To prevent this you can use this getter
extension OptionalFirst<T> on Iterable<T> {
  T? get optionalFirst => isEmpty ? null : first;
}

/// Example

/// To get an random element of Iterable
extension RandomElement<T> on Iterable<T> {
  T get getRandom => elementAt(math.Random().nextInt(length));
}

/// Example
/// var list = ['one', 'two', 'three', 'four'];
/// final random = list.getRandom;

/// Subscript to rely on getting proper data
extension Subscript<T> on Iterable<T> {
  T? operator [](int index) => length > index ? elementAt(index) : null;
}
/// Example:
/// var list = ['foo', 'bar'];
/// var item = list[10];

extension NullableIterable<E> on Iterable<E> {
  ///
  /// Works like firstWhere but it is nullable,
  /// returns null if couldn't find any element
  ///
  /// ```dart
  ///  final items = [0, 1, 2, 3, 4];
  ///  items.firstWhereOrNull((element) => element == 4); // resturns 4
  ///  items.firstWhereOrNull((element) => element == 5); // resturns null
  /// ```
  E? firstWhereOrNull(bool Function(E element) test, {E Function()? orElse}) {
    for (final element in this) {
      if (test(element)) return element;
    }
    if (orElse != null) return orElse();
    return null;
  }
}
