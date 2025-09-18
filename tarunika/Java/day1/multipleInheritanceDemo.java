class A {
    void methodA() {
        System.out.println("Method from A");
    }
}

class B {
    void methodB() {
        System.out.println("Method from B");
    }
}

static class C extends A, B {
    void methodA() {
        System.out.println("Method from A");
    }
    void methodB() {
        System.out.println("Method from B");
    }
}
public class multipleInheritanceDemo {
    public static void main(String[] args) {
	c.methodA();
	c.methodB();
        
    }
}


}
