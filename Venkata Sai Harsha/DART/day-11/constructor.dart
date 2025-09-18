class EmployeeData {
  String? name, desig;
  int? empId, salary; // Renamed emp_id to empId

  EmployeeData(String name, int empId, String desig, int salary) { // Renamed emp_id to empId
    this.name = name;
    this.empId = empId; // Renamed emp_id to empId
    this.desig = desig;
    this.salary = salary;
  }
  void displayEmployee() {
    print("Name of the employee: ${this.name}");
    print("id of the employee: ${this.empId}"); // Renamed emp_id to empId
    print("employee designation: ${this.desig}");
    print("Salary: ${this.salary}"); // Corrected to print salary instead of name
    print(this);
  }
}

void main() {
  EmployeeData e = EmployeeData("sai", 4784, "Software", 20000);
  e.displayEmployee();
}