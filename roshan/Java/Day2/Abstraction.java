abstract class Animal {
    // Abstract method - subclasses must implement this
    abstract void makeSound();

    // Abstract method with parameters
    abstract void move(int steps);

    // Non-abstract method
    public void breathe() {
        System.out.println("Animal is breathing.");
    }
}

class Dog extends Animal {
    public void makeSound() {
        System.out.println("Dog says: Woof Woof");
    }

    public void move(int steps) {
        System.out.println("Dog runs " + steps + " steps.");
    }
}

class Cat extends Animal {
    public void makeSound() {
        System.out.println("Cat says: Meow");
    }

    public void move(int steps) {
        System.out.println("Cat walks " + steps + " steps.");
    }
}

class Abstraction {
    public static void main(String[] args) {
        Animal dog = new Dog();
        dog.breathe();
        dog.makeSound();
        dog.move(10);

        Animal cat = new Cat();
        cat.breathe();
        cat.makeSound();
        cat.move(5);
    }
}
