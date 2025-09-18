abstract class shape{
  void draw();
  void info(){
    print("INfo abt shape ");
  }
}

class Circle extends shape{
  @override
  void draw(){
    print("Circle extends shape");

  }
}

void main(){
  shape s = Circle();
  s.draw();
  
}