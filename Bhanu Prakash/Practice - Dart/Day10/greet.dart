void main() {
  var (name, years) = displayData();
  print('Hi $name, you are $years years old');
}

(String, int) displayData() {
  return ("Bhanu", 21);
}