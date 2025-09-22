/*can use multiple mixins and it is linked with classes using "with" keyword.
When the 2 different mixin has methods of same name then it check the order in 
it is loaded and prints the last loaded one*/
mixin m1 {
  void display() {
    print("mixin 1");
  }
}
mixin m2 {
  void display() {
    print("mixin 2");
  }
}

mixin m3 {
  void display2() {
    print("mixin 3");
  }
}

class c1 with m1, m2, m3 {
  //since m2 is added in the stack at last, it prints mixin 2
  display();
}

void main() {
  c1 obj = c1();
  obj.display(); //prints mixin 2
  obj.display2();
}
