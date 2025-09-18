mixin canwalk {
  void walk()=>print("I Can Walk");
}

mixin canTalk{
  void Talk() =>print("I Can Talk");
}

class Person with canTalk,canwalk{


}

void main(){
  Person p =Person();
  p.Talk();
  p.walk();
}