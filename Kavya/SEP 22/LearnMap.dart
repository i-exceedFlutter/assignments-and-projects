// void main() {
//   var a = {1: "one", 2: "two", 3: "three"};
//   Map<int, String> b = {1: "one", 2: "two", 3: "three"};
//   Map c = Map();
//   c = {1: "one", 2: "two", 3: "three"};
//   List d = [1, 2, 3, 4];
//   var e = Map.of(c);
//   var f = Map.from(c);
//   var g = Map.fromIterables(d, d);
//   var h = Map.fromIterable(
//     d,
//     key: (element) => element - 5,
//     value: (element) => element + 5,
//   );
//   print(h);
//   var map = Map.unmodifiable({1: "one", 2: "two"});
//   // map[1] = "eight";
//   print(map);
//   final map1 = {1: "1", 2: "2", 3: "3"};
//   // map1 = {1: "1"}; - error - cannot be reassigned
//   map1[1] = "2"; //can be modified
//   print(map1);
//   const map2 = {1: "1", 2: "2", 3: "3"};
//   //  map1 = {1: "1"}; - error - cannot be reassigned
//   // map2[1] = "2";  //- cannot be modified
//   print(map2);
//   var mapentry = {MapEntry(5, "five"), MapEntry(6, "six"), MapEntry(4, "four")};
//   Map map3 = Map.fromEntries(mapentry);
//   print(map3);
//   Map empty = Map();
//   empty.addEntries(mapentry);
//   print(empty);
// }

// void main() {
//   var map = {1: "one", 2: "two", 3: "three"};
//   for (var i in map.entries) {
//     print(i.key);
//     print(i.value);
//   }
//   for(var i in map.keys)  //read-safe, cannot modify -> .add() or .remove()
//   {
//       print(i);
//   }

//   map.forEach((k, v) {
//     print("$k");
//   });

//   for (var i = 0; i < map.length; i++) {
//     print(map.entries.toList()[i].key);
//   }
// }

void main() {
  print({1: "one"} == {1: "one"}); //FALSE
  var a = {1: "one", 2: "two"};
  a[3] = "three"; //added to a
  a[4] = "four";
  print(a.length); //length is 4
  a.remove(3);
  print(a.length);
  print(a.containsKey(3)); //false

  // for (var i in a.keys) { // - ERROR throws Exception
  //   a.remove(i);
  // }
  // print(a);

  for (var i in a.keys.toList())  // fixed
  {
    a.remove(i);
  }
  print(a);

  // a.forEach((k, v) {
  //   a.remove(k);
  // });
}
