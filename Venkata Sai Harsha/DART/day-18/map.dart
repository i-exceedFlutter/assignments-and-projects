//import 'dart:collection';

void main(){
  var data={};
  print(data.runtimeType);

  var data1=<String,dynamic>{"name":"sai","age":21};
  print(data1.runtimeType);

  Map<String,int> data2=Map.of({"name":2,"name1":23});
  print(data2); 

  Map<String,String> data3=Map.from({"ID101":"Bunny", "ID102":"Arjun"});
  data3.forEach((i,j)=>print("$i -> $j"));

  Map<int,String> data4=Map.fromEntries([MapEntry(1,"sai"),MapEntry(2, "Harsha")]);
  print(data4);

  Map<int, String> students = {};
  students[1] = "Alice";
  students[2] = "Bob";
  print(students);

  var map5 = Map.unmodifiable({"pi": 3.14, "e": 2.71});
  print(map5);

  var numbers = [1, 2, 3];
  var map6 = Map.fromIterable(numbers,
      key: (n) => n, value: (n) => n * n);
  print(map6);

  var keys = ["a", "b", "c"];
  var values = [10, 20, 30];
  var map7 = Map.fromIterables(keys, values);
  print(map7);

  Set<String> city = {"Salem", "Bengaluru", "Kurnool", "Kochi"};
  Map.fromIterable(city);

  print(
    Map.fromIterable(
      city,
      key: (i) => i,
      value: (i) => i.startsWith("S")
          ? "Tamilnadu"
          : i.startsWith("C")
          ? "Tamilnadu"
          : "Karnataka",
    ),
  );

  Set<String> state = {"Tamilnadu", "Karnataka", "Andhra", "Kerala"};

  print(Map.fromIterables(state, city));
}