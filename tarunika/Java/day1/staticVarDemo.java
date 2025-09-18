class sample
{
   int x=4;
 
    
   sample()
	{
	   x++;
	}
 
 
   public void display()
	{
	   System.out.println(x);
	}	
}
 
class staticVarDemo 
   {
	public static void main(String asd[])
	 {
	   sample s1=new sample();
	   sample s2=new sample();
	   sample s3=new sample();
	   s1.display();
	   s2.display(); 
	   s3.display();
 
	 }
  }