import 'dart:math';

double addWithPrecision(double a, double b, int smallestunit) {
  int multiplier = pow(10, smallestunit).toInt();
  int intA = (a * multiplier).round();
  int intB = (b * multiplier).round();
  return (intA + intB) / multiplier;
}

void main() {
  double num1 = 80.1;
  double num2 = 90.2;

  double result = addWithPrecision(num1, num2, 2);
  print("Result: $result"); 
  print(addWithPrecision(0.1, 0.2, 2)); 
  print(addWithPrecision(1.005, 2.345, 2));
}
