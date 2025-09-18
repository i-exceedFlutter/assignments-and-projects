class demostaticblock{
    static int x;       // static variable
    static public void display()    // static method
    {
        System.out.println(x);
    }
	static public void display(int y)    // static method //method overloading
    {
        System.out.println(y);
    }
 
    static{                 // static block
        x=100;
        display();
		display(12);
    }
 
    static{                 // static block
        x=200;
        display();
    }
    public static void main(String[] args) {
       System.out.println("main: "+x); //order of the execution
    }
}