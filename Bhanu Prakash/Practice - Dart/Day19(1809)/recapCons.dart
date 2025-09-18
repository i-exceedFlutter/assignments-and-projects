class Emp{

  String name;
  int id;
  int salary;
  String dep;
  Emp(this.name,this.id,this.salary,this.dep);
  Emp.getDep(String dep):this("",0,0,dep);

  void display(){
    print("Myself $name and my Id is $id from dep of $dep");
    print("Salary:$salary");
  }
}
void main(){
  Emp e= Emp.getDep("cse");
  e.display();
}