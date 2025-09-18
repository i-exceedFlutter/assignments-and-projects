class sample	
{
   String name="bhanu";
 
    sample(String name)
	{
	   this.name=name;
	   System.out.println(name);
	}
}
 
class sample1 extends sample  // derived class
{
    sample1()
	{
	  super("prakash");
	  System.out.println(name);
	}
}
 
class stringsuper
{
    public static void main(String asd[])
	{
	   new sample1();
	}
}