class teacher {
  String? name;
  int? age;
  String? subject;

  void getTeacher(String name, int age, String subject) {
    this.name = name;
    this.age = age;
    this.subject = subject;
    this.hashCode;
  }

  void getDetails() {
    print("The teacher name is $name of age $age, teaching $subject");
  }
}

void main() {
  teacher t1 = teacher();
  teacher t2 = teacher();
  teacher t3 = teacher();

  t1.getTeacher("Bhanu", 22, "Maths");
  t2.getTeacher("Tarun", 25, "Social");
  t3.getTeacher("Bhanu", 22, "Maths");

  t1.getDetails();
  t2.getDetails();
  t3.getDetails();

  print(t1.hashCode);
  print(t2.hashCode);
  print(t3.hashCode);
}
