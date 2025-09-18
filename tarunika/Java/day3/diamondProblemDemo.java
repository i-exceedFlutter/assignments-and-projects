interface Parent1 {
    void fun();
}

// Interfaces Declared
interface Parent2 {
    void fun();
}

// Inheritance using Interfaces
class test implements Parent1, Parent2 {
    public void fun()
    {
        System.out.println("fun function");
    }
}

// Driver Class
class diamondProblemDemo {
    // main function
    public static void main(String[] args)
    {
        test t = new test();
        t.fun();
    }
}