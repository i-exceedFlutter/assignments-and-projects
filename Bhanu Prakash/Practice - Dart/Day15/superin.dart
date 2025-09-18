class Person{
  String name;
  int age;
  
  Person(this.name,this.age);

  void showPerson(){
    print("Name :${name}, Age:${age}");
  }
}
class Employee extends Person{
  int EmpId;
  String Dep;
  
  

  Employee(String name,this.EmpId,int age,this.Dep) : super(name, age);
    
 void displayEmployee() {
    super.showPerson(); 
    print("EmpId: $EmpId, Department: $Dep");
  }
}

void main() {
  Employee e = Employee("Bhanu", 4787,21, "L&D");
  e.displayEmployee();
}