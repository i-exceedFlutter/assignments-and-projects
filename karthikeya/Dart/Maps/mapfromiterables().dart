void main() {
  Set<String> city = {"Salem", "Bengaluru", "Kurnool", "Kochi"};
  var m = Map.fromIterable(city);
  print(m);

  print(
    Map.fromIterable(
      city,
      key: (i) => i,
      value: (i) => i.startsWith("S")
          ? "Tamilnadu"
          : i.startsWith("C")
          ? "Tamilnadu"
          : "Karnataka",
    ),
  );

  Set<String> state = {"Tamilnadu", "Karnataka", "Andhra", "Kerala"};

  print(Map.fromIterables(state, city));
}
