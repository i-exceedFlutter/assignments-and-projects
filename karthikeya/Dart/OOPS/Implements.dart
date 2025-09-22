abstract class Student {
  void Details();

  void info() => ("This is student's class"); //concrete class
}

class Teacher implements Student {
  String? name;
  int? age;
  String? dept;
  String? city;

  Teacher(this.name, this.age, this.dept, this.city);

  void Details() {
    print(
      "The name of the Teacher is $name of age $age from dept $dept from city $city",
    );
  }

  void info() {
    //this concrete class is mandatory to override while using implements
    print("This class belongs to Teacher's");
  }
}

void main() {
  Student s = Teacher("Syam", 26, "CS", "Madras");
  s.info();
  s.Details();
}
