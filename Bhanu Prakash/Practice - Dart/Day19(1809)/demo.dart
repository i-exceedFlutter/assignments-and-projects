class cus{
  String? name;
  String? dep;
  void display({String name="Bhanu",String? dep}){
    print("$name and $dep");

  }
}

void main(){
  cus c1=cus();
  c1.display(dep:"id");
}