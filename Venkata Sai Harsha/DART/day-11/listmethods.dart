void main() {
  List<String> l1 = ["java", "js", "python", "dart"];
  l1.add("c");
  print(l1);

  List<String> l2 = ["c", "c++", "pascal", "cobol"];
  l1.addAll(l2);

  print(l1);

  l1.insertAll(0, l2);
  l1.remove("c");
  print(l1);
  l1.removeAt(0);
  print(l1);
  l1.removeLast();
  print(l1);
  l1.removeRange(0, 2);
  print(l1);
  print(l1.contains("apple"));
  print(l1.indexOf("python"));
  print(l1.lastIndexOf("c"));
  l1.sort();
  print(l1);

  // for(var i=0;i<l1.length;i++)
  // {
  //   print(changeCase(l1[i]));
  // }

  var ilanguage = l1.map((i) => i.startsWith('j'));
  print(ilanguage);
  var lan=l1.where((i) => i.startsWith('j'));
  print(lan);
  //  var jo=l1.join(',');
  //  print(jo);
  l1.shuffle();
  print(l1);

  List<int>? l5 = [];
  List<int> l6 = [...l5, 4];
  print(l6);
  
  List<int>? l7=null;
  List<int> l8=[...?l7,45];
  print(l8);
}

// changeCase(String s) =>  s.toUpperCase();
