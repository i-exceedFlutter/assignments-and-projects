class Student {
  String? name, city;
  int? age;
  Student(String msg, this.name, this.age, this.city) {
    print("Constructor is called $msg");
  }
  Student.details(String name, int age, String city)
    : this("through named constructor", name, age, city);

  void display() {
    print("Name: $name");
    print("Age: $age");
    print("City: $city");
  }
}

void main() {
  Student s = Student.details("Subanu", 21, "Coimbatore");
  s.display();
  Student s2 = Student("from main", "Abhi", 20, "Chennai");
  s2.display();
}
