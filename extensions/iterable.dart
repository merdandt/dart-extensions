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
