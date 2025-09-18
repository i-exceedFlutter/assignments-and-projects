class initializerBlockDemo
{
    public static void main(String args[])
	{
	   new initializerBlockDemo();
	}
	static
	{
		System.out.println("Static block");
	}
 
	initializerBlockDemo()	// constructor
	{
	   System.out.println("default constructor");
	}
 
	{				// iblk1
	   System.out.println("initializer first block");
	}
	{
	   System.out.println("initializer second block");
	}
	{
	   System.out.println("initializer third block");
	}	
 
}