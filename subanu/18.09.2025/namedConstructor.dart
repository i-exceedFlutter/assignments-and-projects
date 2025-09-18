class Student {
  String? name, city;
  int? age;

  Student.display(this.name, this.age, this.city) {
    print("Name: $name");
    print("Age: $age");
    print("City: $city");
  }
  Student.displayMsg(String msg) {
    print(msg);
  }
  void greet() {
    print("Welcome");
  }
}

void main() {
  Student s = Student.display("Subanu", 21, "Coimbatore");
  Student.displayMsg("It's another named constructor");
  s.greet();
}
