class Student {
  Student._() {
    print("This is a private constructor");
  }
  factory Student.factCall() {
    print("Calling private constructor through factory constructor");
    return Student._();
  }
  Student._namedCons() {
    print("This is a private named constructor");
  }
  factory Student.namedConstCall() {
    print("Calling a private named constructor through factory constructor");
    return Student._namedCons();
  }
  void display() {
    print("Hello");
  }
}

void main() {
  Student s = Student.factCall();
  Student.namedConstCall();
  s.display();
}
