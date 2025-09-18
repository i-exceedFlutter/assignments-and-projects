import 'dart:math';

abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double area() {
    return pi * radius * radius;
  }
}

class Square extends Shape {
  double side;
  Square(this.side);

  @override
  /*double area() {
    return side * side;
  }*/
  double area() => side * side;
}

void main() {
  Circle c = Circle(5);
  Square s = Square(4);

  print("Area of Circle: ${c.area()}");
  print("Area of Square: ${s.area()}");
}
