void main() 
{
  List<String> cart = [];

  // 1. add()
  cart.add("Apple");
  cart.add("Banana");
  print("Cart after add: $cart");

  // 2. addAll()
  cart.addAll(["Orange", "Mango", "Banana"]);
  print("Cart after addAll: $cart");

  // 3. insert()
  cart.insert(1, "Grapes");
  print("Cart after insert: $cart");

  // 4. insertAll()
  cart.insertAll(2, ["Pineapple", "Guava"]);
  print("Cart after insertAll: $cart");

  // 5. remove()
  cart.remove("Banana");
  print("Cart after remove Banana: $cart");

  // 6. removeAt()
  cart.removeAt(0);
  print("Cart after removeAt(0): $cart");

  // 7. removeLast()
  cart.removeLast();
  print("Cart after removeLast: $cart");

  // 8. removeRange()
  cart.removeRange(1, 3);
  print("Cart after removeRange(1,3): $cart");

  // 9. contains()
  print("Cart contains Mango? ${cart.contains("Mango")}");

  // 10. indexOf()
  print("Index of Grapes: ${cart.indexOf("Grapes")}");

  // 11. lastIndexOf()
  cart.add("Apple");
  cart.add("Apple");
  print(cart);
  print("Last index of Apple: ${cart.lastIndexOf("Apple")}");

  // 12. sort()
  cart.sort();
  print("Sorted Cart: $cart");

  // 13. sublist()
  print("First 2 items: ${cart.sublist(0, 2)}");

  // 14. map()
  var upperCaseCart = cart.map((item) => item.toUpperCase());
  print("Uppercase Cart: $upperCaseCart");

  // 15. where()
  var filteredCart = cart.where((item) => item.startsWith("A"));
  print("Items starting with A: $filteredCart");

  // 16. forEach()
  print("Cart Items:");
  cart.forEach((item) => print("- $item"));

  // 17. join()
  print("Cart as String: ${cart.join(", ")}");

  // 18. toSet()
  print("Set Items: ${cart.toSet()}");

  // 19. elementAt()
  print("Element at index 2: ${cart.elementAt(2)}");

  // 20. shuffle()
  cart.shuffle();
  print("Shuffled Cart: $cart");

  // 21. clear()
  //cart.clear();
  //print("Cart after clear: $cart");

  List<String>? l1 = null;
  List<String> l2 = [...?l1,"Kiwi", ...cart];
  print("New list: $l2");
}
