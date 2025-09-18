class sample
{
    public void display()
	{
           System.out.println("Super class");
        }
  }
 
class sample1 extends sample
{  
   public void display()
	{
	  System.out.println("Derived class");
	}
}
 
class overridding1
  {
     public static void main(String asd[])
	{
	     sample ref = new sample();
	     ref.display();
	     sample1 ref1 = new sample1();
	     ref1.display();
	}
}
 
 