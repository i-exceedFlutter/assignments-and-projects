class Student {
  String? name;
  int? id;
  String? dep;

  Student() {
    name = "Bhanu";
    id = 4787;
    dep = "L&D";
  }

  void DisplayStudent() {
    name="Bhanu Prakash";
    print("Hi i am $name");
    print(id);
    print(dep);
  }
}

void main() {
  Student s1 = Student();  
  s1.DisplayStudent();
}