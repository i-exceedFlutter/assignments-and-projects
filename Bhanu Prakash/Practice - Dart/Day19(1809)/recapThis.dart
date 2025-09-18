class Student{
  String? name;
  String? Dep;
  int? RollNo;
  Student(this.name,this.Dep,this.RollNo);
  Student.onlyRollNo(int RollNo):this("","",RollNo);

  void display(){
    print( "${this.name } ${this.RollNo}");
  }
}
void main(){
  Student s1=Student("Bhanu","CSE",21);
  var s2=Student.onlyRollNo(23);
  s1.display();
  s2.display();
}