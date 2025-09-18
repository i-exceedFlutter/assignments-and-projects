class eat{
  void eating(){
    print("Eating");
  }
}

class talk{
  void talking(){
    print("Talking");
  }
}

class Person implements eat,talk{
  @override
  void eating(){
    print("Eating from PErson");

  }
  @override
  void talking(){
    print("Talking from Person");

  }
}


void main(){
  Person p = Person();
  p.eating();
  p.talking();
}