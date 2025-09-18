void main() 
{
  // 1. Set Creation
  Set<int> setA = {1, 2, 3, 4, 5};
  Set<int> setB = {4, 5, 6, 7, 8};

  print("Initial setA: $setA");
  print("Initial setB: $setB\n");

  // 2. Adding elements
  setA.add(10);
  setA.addAll([20, 30]);
  print("After add & addAll -> setA: $setA\n");

  // 3. Inserting
  setB.addAll([9, 10]);
  print("After adding more to setB: $setB\n");

  // 4. Removing
  setA.remove(2);
  setA.removeWhere((x) => x > 15); 
  print("After remove & removeWhere -> setA: $setA\n");

  // 5. Retaining
  setB.retainWhere((x) => x % 2 == 0);
  print("After retainWhere -> setB: $setB\n");

  // 6. Mathematical operations
  print("Union: ${setA.union(setB)}");
  print("Intersection: ${setA.intersection(setB)}");
  print("Difference (A - B): ${setA.difference(setB)}\n");

  // 7. Checking
  print("setA contains 3? ${setA.contains(3)}");
  print("setB containsAll {4, 6}? ${setB.containsAll({4, 6})}");
  print("Element at index 0 in setA: ${setA.elementAt(0)}\n");

  // 8. Iteration & Transformation
  print("forEach in setA:");
  setA.forEach((e) => print(" -> $e"));

  var mapped = setA.map((e) => e * e);
  print("Mapped (squared): $mapped");

  var filtered = setB.where((e) => e > 5);
  print("Filtered (setB > 5): $filtered");

  // 9. Conversions
  print("setA toList: ${setA.toList()}");
  print("setA join with ',': ${setA.join(',')}");
  print("setA toSet again (redundant): ${setA.toSet()}\n");

  //  10. Utility
  print("setA length: ${setA.length}");
  print("isEmpty? ${setA.isEmpty}, isNotEmpty? ${setA.isNotEmpty}");
  print("First: ${setA.first}, Last: ${setA.last}");

  Set<int> singleSet = {99};
  print("Single element from singleSet: ${singleSet.single}\n");
  
  // 11. clear
  setB.clear();
  print("After clear, setB: $setB");
}

any
every
expands
single
