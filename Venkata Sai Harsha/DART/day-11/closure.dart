// Outer function
Function outerFunction() {
  int counter = 0; // variable captured by closure

  // Inner function (closure)
  void innerFunction() {
    counter++;
    print("Counter value: $counter");
  }

  return innerFunction; // returning inner function
}

void main() {
  var closure = outerFunction(); // outerFunction returns innerFunction

  // Even though outerFunction is done, 'counter' is remembered by the closure
  closure(); // Counter value: 1
  closure(); // Counter value: 2
  closure(); // Counter value: 3
}
