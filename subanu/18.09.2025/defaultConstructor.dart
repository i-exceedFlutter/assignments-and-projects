class Student {
  String? name, city;
  int? age;

  Student() {
    name = "Subanu";
    city = "coimbatore";
    age = 21;
  }
}

class Student2 {
  String? name, city;
  int? age;
  Student2() : name = "Subanu", age = 21, city = "Coimbatore";
}

void main() {
  Student s = Student();
  print("Name: ${s.name}");
  print("Age: ${s.age}");
  print("City: ${s.city}");

  Student2 s2 = Student2();
  print("Name: ${s2.name}");
  print("Age: ${s2.age}");
  print("City: ${s2.city}");
}
