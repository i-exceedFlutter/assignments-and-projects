abstract class Calculate {
  int add(int x, int y);
  int sub(int x, int y);
  void display() {
    print("Abstract class can have a defined method without overriding it");
  }
}

class operation extends Calculate {
  @override
  int add(int x, int y) => x + y;

  @override
  int sub(int x, int y) => x - y;
}

void main() {
  operation obj = operation();
  print(obj.add(5, 10));
  print(obj.sub(10, 5));
  obj.display();
}
