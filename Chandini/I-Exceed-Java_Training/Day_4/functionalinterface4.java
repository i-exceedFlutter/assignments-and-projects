@FunctionalInterface
interface MyInterface {
    void greet(String name);
}

public class functionalinterface4 {
    public static void main(String[] args) {
        MyInterface obj = (name) -> System.out.println("Hello " + name);
        obj.greet("Chandini");
    }
}
