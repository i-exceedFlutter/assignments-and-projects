class initializer_and_static_block
{
    public static void main(String asd[])
	{
	   new initializer_and_static_block();
	}
	static
	{
		System.out.println("Static block");
	}
 
	initializer_and_static_block()	// constructor
	{
	   System.out.println("default constructor");
	}
 
	{				// initializer_and_block 1
	   System.out.println("FirstBlock");
	}
	{				// initializer_and_block 2
	   System.out.println("SecondBlock");   
	}
	{				// initializer_and_block 3
	   System.out.println("ThirdBlock");
	}
 
}