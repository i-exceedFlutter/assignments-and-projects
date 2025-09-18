class Student {
  String? _name;  // private variable
  int? _age;

  // Setter for name
  set name(String name) {
    this._name = name;
  }

  // Getter for name
  /*String? get name {
    return _name;
  }*/
  
  String? getname(){
	return _name;
  }

  // Setter for age
  set age(int age) {
    if (age > 0) {
      this._age = age;
    } else {
      print("Age must be positive");
    }
  }

  // Getter for age
  int? get age => _age; // short-hand getter
}

void main() {
  var s = Student();

  s.name = "Sai";   // calls setter
  s.age = 21;       // calls setter

  print("Name: ${s.getname()}"); // calls getter
  print("Age: ${s.age}");   // calls getter
}