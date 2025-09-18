class overload {
    void display() {
        System.out.println("No parameters");
    }

    void display(int a) {
        System.out.println("Integer: " + a);
    }

    void display(String s) {
        System.out.println("String: " + s);
    }

    void display(int a, String s) {
        System.out.println("Integer and String: " + a + ", " + s);
    }

    public static void main(String[] args) {
        overload obj = new overload();
        obj.display();
        obj.display(10);
        obj.display("Hello");
        obj.display(20, "World");
    }
}
