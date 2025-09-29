abstract class x{
  void display1();
  void display2();
  void display3();
  void show(){}
}

abstract class y extends x{
  @override
  void display1() {
    // TODO: implement display1
  }
}

class z implements y{
  @override
  void display1(){
    // TODO: implement display1
  }
  @override
  void display2() {
    // TODO: implement display2
  }
  @override
  void display3() {
    // TODO: implement display3
  }
  @override
  void show() {
    // TODO: implement show
  }
}