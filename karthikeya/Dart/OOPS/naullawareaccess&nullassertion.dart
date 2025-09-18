class Student {
  String? name;
  int? age;
  String? grade;

  void display() {
    if (name != null) {
      print(
        "Student Name: ${name!.toUpperCase()}",
      ); //null assertion operator where it confirm the name is not null, so instead of directly using this in a method check using if case, so that program wont crash
    } else {
      print("Name is not given");
    }

    print(
      "Age: ${age ?? "Not Provided"}",
    ); //Null-Coalescing Operator,returns the left-hand operand if it is not null,otherwise, it returns the right-hand operand

    print(
      "Grade in lowercase: ${grade?.toLowerCase() ?? 'Not Assigned'}",
    ); //null-aware-access operator, even though the grade is null it runs the function
  }
}

void main() {
  var s1 = Student();
  s1.display();

  var s2 = Student();
  s2.name = "Syam";
  s2.age = 21;
  s2.grade = "A+";
  s2.display();
}
