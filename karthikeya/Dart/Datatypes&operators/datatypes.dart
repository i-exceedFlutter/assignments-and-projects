import 'dart:io';

void main() 
{
  int age = 30;
  print(age);
  print(age.runtimeType);

  double price = 19.99;
  print(price);
  print(price.runtimeType);

  num value = 25; // num is the superclass of int and double
  print(value);
  print(value.runtimeType);

  num value1 = 25.33;
  print(value1);
  print(value1.runtimeType);

  String name = "syam";
  print(name);
  print(name.runtimeType);
  
  var x=30;
  print(x.runtimeType);
  
  //x=25.33 // this is not possible as the value of type double cant be assigned to a variable of type int.So, we will use dynamic keyword.

  dynamic x = 25; // dynamic will decide the data type of the variable at the runtime, so it can be re-assigned with many data types
  print(x);
  print(x.runtimeType);

  x = 234.22;
  print(x);
  print(x.runtimeType);

  x = "Welocme to new programming language Dart";
  print(x);
  print(x.runtimeType);

  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  print(fruits[1]);
  
  Map<String, int> marks = 
  {
  'Math': 95,
  'Science': 90
  };
  print(marks['Math']); 
  
  const Map<String, int> scores = 
  {
  'Math': 95,
  'Science': 90
  };
  
  //scores['Math']=76; // this cant be done because we use const keyword for the map and it cant be changed at the runtime once it is declared at compiletime
  print(scores['Math']); 

  stdout.write('Enter a word: ');
  final String? word = stdin.readLineSync();
  print('You entered: $word');
  //word="pradeep" // this cant be done as the final variable can only be set once at the runtime.
  
}
