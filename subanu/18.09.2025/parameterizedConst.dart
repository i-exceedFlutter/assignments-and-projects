//class 1
class Student {
  String? name;
  int? age;

  Student(this.name, this.age); //positional parameterized constructor

  void display() {
    print("Student Name: $name");
    print("Studnet Age: $age");
  }
}

//class 2
class Employee {
  String? empName;
  int? empId;

  Employee({this.empId, this.empName}); // named parameterized constructor

  void display() {
    print("Employee Name: $empName");
    print("Employee Id: $empId");
  }
}

void main() {
  Student st = Student("Subanu", 21);
  st.display();

  Employee emp = Employee(empName: "Abhi", empId: 1234);
  emp.display();
}
