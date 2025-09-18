void main() {
  var (name, years) = displayData();
  print('Hi $name you are $years old');
  print(displayData());
}

(String, int) displayData() {
  return ("sai", 21);
}
