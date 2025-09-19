interface A {
    default void show() {
        System.out.println("A's show()");
    }
}

interface B extends A {
    @Override
    default void show() {
        System.out.println("B's show()");
    }
}

interface C extends A {
    @Override
    default void show() {
        System.out.println("C's show()");
    }
}

class D implements B, C {
    @Override
    public void show() {
        // Resolving ambiguity explicitly
        B.super.show(); // or C.super.show();
    }
}

public class Demo {
    public static void main(String[] args) {
        D obj = new D();
        obj.show(); // Output: B's show()
    }
}
