void greet(String name, [String? dep]) {
  print("I am $name from $dep");
}

void main() {
  greet("Bhanu");            
  greet("Bhanu", "IT"); // dep provided
}
