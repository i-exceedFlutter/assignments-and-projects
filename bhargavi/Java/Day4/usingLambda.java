@FunctionalInterface
interface data {
    public void print();
}

class usingLambda {
    public static void main(String[] args) {
        data d = () -> System.out.println("Inside functional interface");
        d.print();
    }
}