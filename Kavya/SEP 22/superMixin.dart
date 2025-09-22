mixin Tamil on Subjects {
  var a = 10;
  void display() {
    print("Tamil");
  }
  void say() {}
}
mixin English on Subjects {
  var a = 100;
  void display() {
    super.display(); //calls Tamil mixin display()
    print("English");
  }
}
mixin Hindi on Subjects {
  var a = 1000;
  void display() {
    super.display(); //calls English mixin display()
    print("Hindi");
  }
}

class Subjects {
  void display() { //get overrided by Mixin -Mixin methods override superclass methods if they have the same name.
    print("Subjects");
  }
}

class Scores extends Subjects with Tamil,English,Hindi {} 

void main() {
  Scores s = Scores();
  s.display();
  print(s.a);
  // s.say(); - error - say() is in mixin , not with class. It is not accessible like this.
}
