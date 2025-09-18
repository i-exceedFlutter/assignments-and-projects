interface Animal {
    void sound();   
    void sleep();   
}

class Dog implements Animal {
    public void sound() {
        System.out.println("Dog barks");
    }

    public void sleep() {
        System.out.println("Dog sleeps");
    }
}

class Cat implements Animal {
    public void sound() {
        System.out.println("Cat meows");
    }

    public void sleep() {
        System.out.println("Cat sleeps");
    }
}

class interface1 {
    public static void main(String[] args) {
        Animal a;   

        a = new Dog();
        a.sound();  
        a.sleep();   

        a = new Cat();
        a.sound();   
        a.sleep();   
    }
}
