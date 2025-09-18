class Employee{
  String name;
  int Emp_id;

  Employee(this.name,this.Emp_id){
    print("${Emp_id}");

  }
  void display(){
    
  }
}
extension Employeeex on Employee{
  void greet(){
    print("HI i am ${name}");
  }
}
extension partnerDetails on Employee{
  Map addpartnerDetails(String P_Name,String P_id , String P_des){
    Map<dynamic,dynamic>partner={};
    partner['Name'] =P_Name;
    partner['Id']=P_id;
    partner['Des']=P_des;
    return partner;
  }
}
void main(){
  Employee e = Employee("Bhanu", 4787);
  e.greet();
  var details =e.addpartnerDetails("Priya", '4567', 'SDE');
  print(details);
}