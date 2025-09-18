class Person {
    Person() {
        this("Hello");
        System.out.println("Inside default constructor");
    }

    Person(String greeting) {
        System.out.println("Greeting: " + greeting);
    }

    Person(int age, String profession) {
        System.out.println("Age: " + age + ", Profession: " + profession);
    }
}

class thisConstructorDemo {
    public static void main(String[] args) {
        Person p1 = new Person();               // Calls default constructor
        Person p2 = new Person(21, "Engineer"); // Calls parameterized constructor
    }
}
