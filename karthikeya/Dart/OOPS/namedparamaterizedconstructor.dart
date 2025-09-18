class Teacher {
  String name;
  int? age;
  String? dept;
  String? city;

  Teacher({
    this.name = "Syam",
    this.age,
    required this.dept,
    this.city,
  }); //named parameterized constructor

  void getTeacher() {
    print(
      "Teacher with name $name of age $age is in $dept department from $city city",
    );
  }
}

void main() {
  Teacher t1 = Teacher(name: "Roshan", dept: 'ECE');
  Teacher t2 = Teacher(age: 32, dept: "CS", city: "Hyderabad");
  t1.getTeacher();
  t2.getTeacher();
}
