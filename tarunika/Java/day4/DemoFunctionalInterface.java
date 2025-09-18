@FunctionalInterface
interface MessagePrinter {
    void printMessage();  //abstract method
}

public class DemoFunctionalInterface {
    public static void main(String[] args) {
        MessagePrinter printer = () -> System.out.println("Hello from lambda!");
        printer.printMessage();     
 }
}
