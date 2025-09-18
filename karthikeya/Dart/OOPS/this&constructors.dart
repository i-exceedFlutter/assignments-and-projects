class Teacher {
  String name;
  int? age;
  String? dept;

  Teacher(
    this.name,
    this.age,
    this.dept,
  ); //only constructors can be instantiated like this without body, methods cant be

  Teacher.guest(String name)
    : this(
        name,
        30,
        "ME",
      ); //named constructor will be written like this,and called it with its name

  void display() {
    print("Name: $name, Age: $age,Dept:$dept");
  }
}

void main() {
  var t1 = Teacher("Sai", 40, "CS");
  var t2 = Teacher.guest("Karthik");

  t1.display();
  t2.display();
}
