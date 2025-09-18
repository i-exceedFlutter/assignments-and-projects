class Student {
  String? name;
  int? age;

  //parameterized constructor
  Student(this.name, this.age);

  //named constructor
  Student.cons1(this.name) {
    print("Named constructor 1");
  }

  Student.cons2(int age) {
    print("Age: $age in named constructor 2");
  }

  void display() {
    print("Hi");
  }
}

void main() {
  Student obj = Student("Subanu", 21);
  print(obj.name);

  Student obj1 = Student.cons1("subanu");
  Student obj2 = Student.cons2(21);
  print(obj2.age); //null
  print(obj1.name);
  obj2.display();
}
