void greet(String name, [String? message]) {
  print("Hello $name");
  if (message != null) {
    print(message);
  }
}

//named parameters are by default optinal
void greetMe({String? name,String? title}){
  print("welcome ${title ?? "prof."} ${name ?? "Guest"}");
}

// void about({String? name, int? age},[String name]){
  
// }

void main() {
  greet("Sai");
  greet("Harsha", "Welcome to Dart!");
  greetMe();
  greetMe(name:"Sai",title: "Mr.");
}
