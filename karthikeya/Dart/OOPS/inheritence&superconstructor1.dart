class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void display() 
  {
    print("Name: $name, Age: $age");
  }
}

class Student extends Person {
  String course;

  Student(String name, int age, this.course) : super(name, age);

  @override
  void display() {
    super.display();
    print("Course: $course");
  }
}

void main() {
  var s = Student("Karthik", 22, "Computer Engineering");
  s.display();
}
