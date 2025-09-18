class Person{
  String ?name ;
  int ?age;
   
   void showName(){
    print("Name:${name}");
   }


}
class Employee extends Person{
  int ?EmpId;
  String ?Dep;

  void showDetails(){
    print ("EmpId ${EmpId}, Department : ${Dep}");
  } 
}

void main(){

 Employee e = Employee();
 e.name="Bhanu";
 e.EmpId=4787;
 e.Dep="L&D";

 e.showName();
 e.showDetails();


}