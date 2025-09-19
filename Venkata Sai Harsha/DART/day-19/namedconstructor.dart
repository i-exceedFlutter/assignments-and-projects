class Student {
  String name;
  int rollNo;

  Student(this.name, this.rollNo);

  Student.anonymous() : name = "Unknown", rollNo = -1;

  Student.guest(String name) : this(name, 420);

  void display() {
    print("Name: $name, Roll No: $rollNo");
  }
}

void main() {
  var s1 = Student("Alice", 101);
  s1.display();

  var s2 = Student.anonymous();
  s2.display();

  var s3 = Student.guest("Theif");
  s3.display();
}
