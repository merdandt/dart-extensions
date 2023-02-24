/// if you want to find, type check and convert a value
/// inside a Map all simultaneously in one go, use this
/// extension Here are 3 ways you can utilize it to make
/// your code more readable!
extension Find<K, V, R> on Map<K, V> {
  R? find<T>(
    K key,
    R? Function(T value) cast,
  ) {
    final value = this[key];
    if (value is T) {
      return cast(value);
    } else {
      return null;
    }
  }
}

/// Example
/// const json = {
///   'name': 'Foo',
///   'age': 21,
/// };
/// 
/// void testIt() {
///   // get the age
///   final String? ageAsString = json.find(
///     'age',
///     (int value) => 'Your age is $value',
///   );
///   // Force get the name using ! operator
///   final String helloName = json.find(
///     'name',
///     (String name) => 'Hello $name',
///   )!;
///   // non-existant key
///   final String? address = json.find(
///     'address',
///     (String address) => 'You live at $address',
///   )!;
/// }
