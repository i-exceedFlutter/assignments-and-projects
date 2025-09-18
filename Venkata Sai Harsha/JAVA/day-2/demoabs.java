abstract class sample
{
    sample()
	{
	}
    abstract public void display(int x,int y); // method declaration
    abstract public void display1();
    abstract public void display2();
 
  }
 
abstract class sample1 extends sample 
{
    sample1(){}
	
	//abstract public void display3();
 
    public void display(int x,int y)
	{
	}
 
}

class sample2 extends sample1{
	public void display1(){}
	public void display2(){}
	//public void display3(){}
}
 
 
class demoabs
{
   public static void main(String asd[])
	{
	   new sample2();
	}
 
}