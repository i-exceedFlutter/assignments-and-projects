abstract class sample
{
    sample()
	{
           System.out.println("This is parent class."); 
	}
    abstract public void display(int x,int y);  // abstract method
  }
 
class sample1 extends sample 
{
    sample1()
    {
       System.out.println("This is child class."); 
    }
    public void display(int x,int y)
	{
	}
}
 
class abstractclass1
{
   public static void main(String asd[])
	{
	   new sample1();
	}
}
 
 