abstract class Sample 
{
    abstract void display(int a, int b);
    abstract void display1();
    abstract void display2();
}

// only 2 methods are implemented here, so this child class should also be a abstract class, same with interface concept

abstract class Sample1 extends Sample 
{
    public void display(int a, int b) {
        System.out.println("Sum: " + (a + b));
    }

    public void display1() {
        System.out.println("This is display1 method.");
    }

}

class Sample2 extends Sample1 // the 2nd child class should be inherited from the child 1 not the parent class
{
    public void display2() // the 3rd method is implemented here
	{
        System.out.println("This is display2 method.");
    }
}

class abstractclass2 {
    public static void main(String[] args) {
        Sample2 obj = new Sample2();

        obj.display(30, 40);
        obj.display1();
        obj.display2();
    }
}