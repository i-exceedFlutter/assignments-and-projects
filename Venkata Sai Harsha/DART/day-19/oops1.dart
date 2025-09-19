class Student {
  String? name;
  int? rollNo;

  Student(String name, int rollNo){
    this.name=name;
    this.rollNo=rollNo;
  }

  void displayInfo() {
    String status = "Active"; // local variable
    print("Student Name: $name");
    print("Roll Number: $rollNo");
    print("Status: $status");
  }
}

void main() {
  Student s1 = Student("Amit", 101);
  s1.displayInfo();
}
