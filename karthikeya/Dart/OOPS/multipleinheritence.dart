class Animal {
  void eat() => print("Animal is eating");
}

class Tiger extends Animal {
  void walk() => print("Tiger is walking");
}

class Dog extends Tiger {
  void bark() => print("Dog is barking");

  @override
  void walk() => print("Dog is walking for the food"); // Overriding Tiger's method

  @override
  void eat() => print("Dog is eating Pedigree"); // Overriding Animal's method
}

void main() {
  Dog d = Dog();
  d.bark();
  d.walk();
  d.eat();
}
