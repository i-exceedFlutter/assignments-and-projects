void greet(String name, [int? age]) {
  print('Hi, I am $name and I am $age years old.');
}

void main() {
  
  String str ="Bhanu Prakash          TTTTT hh       ";
  
  print('Welcome ${str.trim()}');
  greet('Bhanu');
 
}
