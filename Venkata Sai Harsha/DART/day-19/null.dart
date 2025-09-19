class Person {
  String? name;      
  int? age;      

  Person({this.name, this.age});

  void displayInfo() {
    print("Name length: ${name?.length}");
    print("Age: ${age ?? 18}"); 
  }

  void shoutName() {
    print("HEY, ${name!.toUpperCase()}!");
  }

  // shoutName 1 is the best way of use for null assertion if we use directly then the valus is null means the code will get an exception at that point it won't go futher 
  // Using shoutName1 is a safer way to handle null values with the null assertion operator. If we directly use `name!` when `name` is null, the program will throw a runtime exception and stop execution immediately. By checking `name != null` first, we avoid the crash and handle the null case gracefully.
  void shoutName1(){
    if(name!=null){
      print("HEY, ${name!.toUpperCase()}!");
    }else{
      print("name is null");
    }
  }

}

void main() {
  var p1 = Person(name: "Alice", age: 25);
  p1.displayInfo();   
  p1.shoutName();    
  p1.shoutName1(); 

  print("-----");

  var p2 = Person();
  p2.displayInfo();  
  
  p2.shoutName1();  
  // p2.shoutName();   // ❌ ERROR at runtime (Null check operator used on a null value)
}
