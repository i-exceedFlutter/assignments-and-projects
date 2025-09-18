class sample	// super class
{
   String name="xyz";
   int age;
   
   sample(String name) 
   {
	   System.out.println(name);
   }
 
    public void callme(String name)
	{
	   this.name=name;
	   System.out.println(name);
	}
	
	  public void callme1(int age)
	{
	   this.age=age; // this will be used if the variable is class variable
	   System.out.println(age);
	}
}
 
class sample1 extends sample  // derived class
{
    sample1()
	{
	  super("Syam"); // we can use super in the 1st line of the inherited block ,if there is only a constructor block in the super class and it will be only executed
	  name="sivam"; // if we use name="", then only the name given in inherited block will be printed, it wont inside of constructor block
	  System.out.println(name);
	}
}
 
class inher1
{
    public static void main(String asd[])
	{
	   new sample1().callme("karthikeya");//callme is a method initiated in the super class, to execute that we should call that method
	   new sample("shyam").callme1(23);
	}
}