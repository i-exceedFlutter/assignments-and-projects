abstract class Sample // for declaring the methods we should declare the class as abstract class not only the methods inside
 {
    Sample() 
	{
        System.out.println("Sample constructor called");
    }

    abstract public void display(int a, int b); // here we just declare the methods using abstract keyword, if we are not using abstract keyword, we cant declare the method inside the class
    abstract public void display1();
    abstract public void display2();
}

class Sample1 extends Sample
 {
    
    Sample1() 
	{
        System.out.println("Sample1 constructor called");
    }

    public void display(int a, int b) // we must call all the methods declared in the abstract class in the child class
	{
        System.out.println("Sum: " + (a + b));
    }

    public void display1() 
	{
        System.out.println("This is display1 method.");
    }

    public void display2() 
	{
        System.out.println("This is display2 method.");
    }
}

class abstractclass1 
{
    public static void main(String[] args) {
        
        Sample1 obj = new Sample1(); // for abstract class we cant create the objects

        obj.display(10, 20);     
        obj.display1();          
        obj.display2();          
    }
}
