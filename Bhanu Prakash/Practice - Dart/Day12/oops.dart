class sample{
  String name;
  int id;
  String des;
  int salary;

  sample(this.name,this.id,this.des,this.salary);

  void DisplayData(){
    print("Name:${name}");
    print('ID: $id');
    print('Designation: $des');
    print('Salary: $salary');



  }

}
void main(){
  sample s1=sample("BHanu",8747,"Trainee",23000);
  s1.DisplayData();

}