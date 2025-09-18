class stringconcat
   {
     public void concatString() // string is immutable
	{
	   String str="Syam";
	   for(var i=0;i<1000;i++)
		{
		  str+="Karthikeya";
		}	
	}
 
     public void concatStringByBuffer() // StringBuffer is Mutable and it very safe in protection wise(threads) becoz the methods in this has synchorized in their name
	{
	   StringBuffer sb=new StringBuffer("Syam");
	   for(var i=0;i<1000;i++)
		{
		   sb.append("Karthikeya");
		}
	}
	
	public void concatStringByBuilder() // StringBuilder is mutable, It is very quick in performancewise but lack of security issue
	{
	   StringBuilder sb1=new StringBuilder("Syam");
	   for(var i=0;i<1000;i++)
		{
		   sb1.append("Karthikeya");
		}
	}
	
  }
  
class demostringconcat
{
    public static void main(String asd[])
	{
	  stringconcat obj=new stringconcat();
	  
	  long stime1=System.currentTimeMillis(); // it calculates time from 1970 00:00 hrs in millisecs
	  obj.concatString();
	  System.out.println(System.currentTimeMillis()-stime1);//  it calculates how much time the method is taking to execute
	  
	  long stime2=System.currentTimeMillis();
	  obj.concatStringByBuffer();
	  System.out.println(System.currentTimeMillis()-stime2);
	  
	  long stime3=System.currentTimeMillis();
	  obj.concatStringByBuilder();
	  System.out.println(System.currentTimeMillis()-stime3);
	  
	}
}