void main(){

  Set<String>lang1={"C++","Java","C"};
  List<String>lang2=["Python","JS","dart"];
  lang2.add("Go");
  lang1.addAll(lang2);
  print("lang2:$lang2");
  lang1.add("Dart");
  print(lang1);
  lang1.removeWhere((el)=>el.startsWith("C"));
  print(lang1);
  lang1.retainWhere((el)=>el.startsWith("J"));
  print(lang1);
  lang1.remove("Js");
  print("lang1:$lang1");
  lang1.addAll(lang2);
  print("lang1:$lang1");
  print(lang1.contains("Go")); 
  print(lang1.containsAll(["JS","Python"]));

  print(lang1.map((e) => e.toUpperCase()));

  print(lang1.where((e)=>e.startsWith("J")));

  Set<String> admin={"Bhanu","Prakash","Ntr"};

  Set <String> dev={"Prakash","Mb","Pk"};

  print("Union: ${admin.union(dev)}");
  print("Intersection:${admin.intersection(dev)}");
  print("Differnce :${admin.difference(dev)}");
  print(admin.last);
  Set<String>sab={"Lost"};
  if (sab.length == 1) {
  print('Contains Single element: ${sab.single}');
  } else {
  print("Set has multiple elements");
  }


}