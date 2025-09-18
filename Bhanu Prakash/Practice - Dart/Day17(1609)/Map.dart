void main(){

  var data=<String,dynamic>{"Name":"Harsha","Age":21};
  print(data.runtimeType);


  Map<String,int> data2=Map();
  print(data2.runtimeType);

  data2["Apples"]=200;
  data2["banana"]=30;

  print(data2);

  Map cpMap= Map.from(data2);
  print(cpMap);
  print(cpMap.runtimeType);
  print(" ");
  Map <String,dynamic> cpMap2=Map.from(data);
  print(cpMap2);
  //Type Error - Map.of(Compile Time ) && Map.from(Run time); => Map <String,int> cpMap2=Map.from("Bhanu":21,"Prakash":"white");
  
  var lmap=[MapEntry("Bhanu", 20),MapEntry("Abhi", 23)];
  print(lmap.runtimeType);
  print(lmap);
  print(Map.fromEntries(lmap));
  cpMap2.addAll(Map.fromEntries(lmap));
  print('Map:$cpMap2');
  print(" ");
  Map<String,dynamic> data3 = Map();
  data3.addAll({"Manoj":22,"BP":33});
  print(data3);
  
  
  


}