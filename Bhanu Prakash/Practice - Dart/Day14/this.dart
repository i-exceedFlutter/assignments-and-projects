class Employee{

  String name;
  int salary;
  Employee(this.name,this.salary);

  void DisplayData(){
    print("Name of the Employee is ${name}");
    print("Salary is ${salary}");
  }
}
void main(){
  Employee e1=Employee("Bhanu", 2300);
  e1.DisplayData();
}