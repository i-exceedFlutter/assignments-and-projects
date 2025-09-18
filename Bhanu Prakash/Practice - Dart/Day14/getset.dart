class Employee{
  String _name="";
  int _EmpId=0;
  int _salary=0;

  void setEmployee(String name,int EmpId,int salary ){
   this._name=name;
   this._EmpId=EmpId;
   this._salary=salary;


  }
  String get getEmployee => "hi ${_name} your id ${_EmpId} & Salary is $_salary";



}
void main(){
  Employee e = Employee();
  e.setEmployee("Bhanu", 4787 , 300000);
  print(e.getEmployee);
} 