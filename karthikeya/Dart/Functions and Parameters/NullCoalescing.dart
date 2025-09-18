void greet(String? name) {
  String DisplayName =
      name ??
      "Anonymous"; // Null-Coalescing Operator ??, assign "Anonymous"(Right handed value) only if name is null
  print("Hello, $DisplayName");
}

void main() {
  greet("Karthikeya");
  greet(null);
}
