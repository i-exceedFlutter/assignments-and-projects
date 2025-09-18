class sample	{
   String name="bhanu";
 
    public void callme(String name)
	{
	   this.name=name;
	   System.out.println(name);
	}
}
 
class sample1 extends sample  // derived class
{
    sample1()
	{
	
	  System.out.println(name);
	}
}
 
class MethodVersion
{
    public static void main(String args[])
	{
	   new sample1().callme("prakash");
	}
}