void main() {
  // Integer data type
  int integerNumber = 10;
  print('Integer: $integerNumber');

  // Double data type
  double doubleNumber = 3.14;
  print('Double: $doubleNumber');

  // String data type
  String stringText = 'Hello, Dart!';
  print('String: $stringText');

  // List data type (array)
  List<int> numbersList = [1, 2, 3, 4, 5];
  print('List:');
  for (int number in numbersList) {
    print(number);
  }

  // Map data type (key-value pair)
  Map<String, String> userDetails = {
    'name': 'John Doe',
    'email': 'john@example.com',
    'age': '30'
  };
  print('Map:');
  userDetails.forEach((key, value) {
    print('$key: $value');
  });
}
