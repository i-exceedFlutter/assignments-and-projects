void main(){

  Map<String,dynamic> Student={
    "Name":"Bhanu",
    "Id":4787,
    "Dept":"L&D"
  };

  print("\nfor each");
  Student.forEach((key, value) {
    print("$key:$value");
  },);
  print("\nfor var in ");
  for (var e in Student.entries) {
  print("${e.key} : ${e.value}");
  }

  print("\nvar keys");
  for(var key in Student.keys){
    print("key: $key");
  }
  print(" \n");
  for (int i = 0; i < Student.length; i++) {
  var key = Student.keys.elementAt(i);
  print("$key => ${Student[key]}");
  }


}