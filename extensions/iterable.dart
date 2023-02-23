extension SumNumIterable<T extends num> on Iterable<T> {
  T sum() {
    // initialize sum
    T sum = (T == int ? 0 : 0.0) as T;
    // calculate sum
    for (T current in this) {
      sum += current;
    }
    return sum;
  }
}
