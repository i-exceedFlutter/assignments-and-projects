class sample{
   static int x=0;
	int y=10;
    
   sample()
	{
	   x++;
	}
 
   public void display()
	{
	   System.out.println(x);
	   System.out.println(y); //local variable and instace variable
	   
	}	
}
 
class demostaticvar 
   {
	public static void main(String asd[])
	 {
	   sample s1=new sample();
	   s1.display();
	   sample s2=new sample();
	   s2.display(); 
	   sample s3=new sample();
	   s3.display();
 
	 }
  }