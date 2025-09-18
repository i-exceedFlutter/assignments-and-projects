void main() {
  //Through Literals
  var countryCodes = <String, String>{
    "India": "INR",
    "USA": "USD",
    "Japan": "JPY",
  };

  print(countryCodes);
  print(countryCodes["India"]);

  //Map()

  Map<String, String> capitals = Map();
  capitals["India"] = "New Delhi";
  capitals["USA"] = "Washington DC";
  capitals["Japan"] = "Tokyo";

  print(capitals);

  //map.from and map.of

  Map<String, int> M1 = {"Syam": 32, "Karthik": 23};
  print(M1.runtimeType);

  // Map<String, int> M2 = Map.of(
  //   {"Syam": "Hi", "Karthik": 24},
  // ); //map.of throws runtime and compiletime error when it doesnt match the datatypes defined for key and value

  Map<String, int> M2 = Map.of({"Syam": 21, "Karthik": 24});
  print(M2);

  // Map<String, int> M3 = Map.from({
  //   "Hari": "Hello",
  //   "Krishna": 34,
  // }); // map.from throws exception in the same abvove case

  Map<String, int> M3 = Map.from(M1);
  print(M3);

  //map.fromEntries

  var entries = [
    MapEntry("apple", 100),
    MapEntry("banana", 50),
    MapEntry("orange", 70),
  ];

  var fruitPrices = Map.fromEntries(entries);
  print(fruitPrices);

  //empty maps

  var map1 = {}; // Map<dynamic, dynamic>
  var map2 = <String, int>{}; // Empty typed map
  var map3 = Map(); // Empty dynamic map

  //Map.Unmodifiable()

  Map Umod = Map.unmodifiable(M1);
  print(Umod.runtimeType);
  // Umod["Karthik"] =32; //This will throw the runtime error as the map is unmodifiable
  print(Umod);

  //Map using Const

  const Map<String, String> Mconst = {"Tarun": "Good", "Harsha": "Bad"};
  print(Mconst.runtimeType);
  //Mconst["Harsha"] ="Excellent"; // similar to the unmodifiable map as both are constants
  print(Mconst);
}
