abstract class Shape {
  void draw(); // abstract method

  void info() => print("This is a shape"); // concrete method
}

class Circle extends Shape {
  @override
  void draw() => print("Drawing a Circle"); //abstract method should be instantiated in one of the child classes

  void figure() => print("It is 2D figure");
}

class Cube extends Circle {
  @override
  void draw() => print("Drawing the Cube");

  @override
  void figure() => print("It is a 3D figure");

  @override
  void info() => print("This is Cube"); // it not mandatory to override the concrete method of the abstract class while using extends keyword
}

void main() {
  Cube c = Cube();
  Shape s = Circle();

  c.draw();
  c.figure();
  c.info();
  s.draw();
  s.info();
}
