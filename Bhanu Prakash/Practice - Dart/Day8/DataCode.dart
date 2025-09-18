void main() {
  // int - Represents whole numbers without decimals
  int age = 25;
  print(age);
  print(age.runtimeType);

  // double - Represents floating-point numbers (decimals)
  double price = 99.99;
  print(price);
  print(price.runtimeType);

  // String - Represents a sequence of characters
  String name = "Bhanu";
  print(name);
  print(name.runtimeType);

  // bool - Represents boolean values: true or false
  bool isActive = true;
  print(isActive);
  print(isActive.runtimeType);

  // List - Represents an ordered collection of items
  List<String> fruits = ['Apple', 'Banana', 'Mango'];
  print(fruits);
  print(fruits.runtimeType);

  // Map - Represents key-value pairs collection
  Map<String, int> marks = {
    'Math': 95,
    'English': 88,
  };
  print(marks);
  print(marks.runtimeType);

  // dynamic - Represents a variable that can hold any type and can change at runtime
  dynamic x = 10;
  print(x);
  print(x.runtimeType);

  x = "Bhanu";
  print(x);
  print(x.runtimeType);

  // var - Declares a variable with type inferred at compile time
  var city = "Delhi";
  print(city);
  print(city.runtimeType);

  // Object - The superclass of all Dart classes; can hold any non-null object
  Object anything = 42;
  print(anything.runtimeType);

  anything = "Now I'm a string";
  print(anything.runtimeType);

}
