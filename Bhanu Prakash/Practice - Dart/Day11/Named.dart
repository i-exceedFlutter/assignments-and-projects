class Employee {
  String ?name;
  String ?des;
  int ?empId;
  int ?salary;

  Employee({this.empId, this.name, this.des, this.salary}) {
    displayData();
  }

  void displayData() {
    print('Name: $name');
    print('Id: $empId');
    print('Des: $des');
    print('Salary: $salary');
  }
}

void main() {
  Employee(empId:4787, name:'Bhanu', des:'Trainee', salary:25000);
}