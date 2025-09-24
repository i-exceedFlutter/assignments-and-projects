mixin details {
  String name = "Subanu";
  int age = 21;
  void printDetails() {
    print("Name : $name, Age: $age ");
  }
}

class Student with details {
  Student() {
    printDetails();
  }
  void greet() {
    print("Hello $name");
  }
}

void main() {
  Student s = Student();
  s.printDetails();
  s.greet();
}
