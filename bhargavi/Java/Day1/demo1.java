class demo
{
    demo()
	{
	  this("hi");
	  System.out.println("default constructor");
	}
    
     demo(String str)
	{
	  System.out.println("default constructor"+str);
	}
}
 
class demo1
{
   public static void main(String asd[])
	{
	 demo obj1 = new demo();
	}
}