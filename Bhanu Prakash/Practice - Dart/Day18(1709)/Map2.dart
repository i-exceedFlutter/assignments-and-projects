void main(){
  Map<String,dynamic> data ={"Name":"Bhanu","Age":21,"Dep":"L&D","City":"Bnglr"};
  print(data);
  data.forEach((key,value){
    print("$key: $value");
  });

  for(var i=0;i<data.entries.toList().length;i++)
  {
    print("${data.entries.toList()[i].key}:${data.entries.toList()[i].value}");

  }
  print(" ");
  double balance =0.1;
  double credit=0.2;
  print(balance+credit);


}
