class Animal {
    void sound() {
        System.out.println("Some animal sound");
    }
}

class Dog extends Animal {
    void sound() {
        System.out.println("Dog barks");
    }
}

class Cat extends Animal {
    void sound() {
        System.out.println("Cat meows");
    }
}

public class demo5 {
    public static void main(String[] args) {
        Animal a;

        a = new Dog();
        a.sound();  
        a = new Cat();
        a.sound();  
    }
}
