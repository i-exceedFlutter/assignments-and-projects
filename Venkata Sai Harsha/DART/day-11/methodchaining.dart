class Student {
  String? name;
  int? age;

  Student setName(String name) {
    this.name = name;
    return this; // returning current object
  }

  Student setAge(int age) {
    this.age = age;
    return this; // returning current object
  }

  void display() {
    print("Name: $name, Age: $age");
  }
}

void main() {
  // Method chaining
  Student s1 = Student();
  s1.setName("Harsha").setAge(22).display();
}
