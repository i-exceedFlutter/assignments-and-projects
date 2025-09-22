abstract class Shape {
  void shapeName();
}

mixin square {
  void shapeName() {
    print("Square");
  }
}
mixin circle {
  void shapeName() {
    print("circle");
  }
}

class AllShapes extends Shape with circle, square {
  void call() {
    shapeName();
  }
}

void main() {
  AllShapes obj = AllShapes();
  obj.call();
}
