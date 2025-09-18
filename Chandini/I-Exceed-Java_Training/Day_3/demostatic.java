class demostatic {
    // static variable
    static int x = 10;

    // static block 1
    static {
        System.out.println("Static Block 1: x = " + x);
    }

    // static variable with expression
    static int y = x + 5;

    // static block 2
    static {
        System.out.println("Static Block 2: y = " + y);
    }

    // static method
    static void display() {
        System.out.println("Static Method Called.");
    }

    public static void main(String[] args) {
        System.out.println("Main method starts.");
        display(); // calling static method
    }
}
