class Student {
  String? name; //nullable instance variable
  int age = 21; //non-nullable instance variable
  late String city; //late, must be initialized before using

  Student(this.name, this.age);

  void display() {
    String state = 'TN'; // local variable
    print("Name: $name");
    print("Age: $age");
    print("State: $state");
  }

  void setCity(String city) {
    this.city = city;
  }
}

void main() {
  Student s = Student("Subanu", 22);
  s.display();
  s.setCity("Coimbatore");
  print(s.city);
}
