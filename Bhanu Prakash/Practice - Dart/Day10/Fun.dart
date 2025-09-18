void sayHello(String name){
  print("Hello $name");
  
}

void main(){
  
  var greeter = sayHello;
  greeter("Bhanu");  // store function
}