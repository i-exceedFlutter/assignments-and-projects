import 'dart:collection';

void main() {
  var data = {1, 2, 3};
  print(data);

  Set<int> data1 = {};
  data1.add(1);
  data1.add(4);
  data1.add(8);
  for (var i in data1) {
    print(i);
  }

  Set<String> data2 = HashSet<String>();
  data2.add("Apple");
  data2.add("Harsha");
  data2.add("sai");
  print(data2);

  Set<int> data3 = LinkedHashSet<int>();
  data3.add(1);
  data3.add(87);
  data3.add(34);
  print(data3);
  data3.forEach((i) => print(i));

  Set<int> data4 = SplayTreeSet<int>();
  data4.add(76);
  data4.add(34);
  data4.add(98);
  print(data4);
  for (int i = 0; i < data4.length; i++) {
    print(i);
  }

  Set<String> data5=Set<String>.from(["sai", "harsha","Mani"]);
  print(data5);
}