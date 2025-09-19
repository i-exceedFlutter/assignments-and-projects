class stringconcat
   {
     public void concatString()
	{
	   String str="iexceed";      // in String we cant use append function as it is immutable 
	   for(var i=0;i<100000;i++)
		{
		  str+="technology";
		}	
	}
 
     public void concatStringByBuffer()
	{
	   StringBuffer sb=new StringBuffer("iexceed"); // StringBuffer is mutable so we use .append
	   for(var i=0;i<100000;i++)
		{
		   sb.append("technology");
		}
	}
   }
class demostringconcat
{
    public static void main(String asd[])
	{
	  stringconcat obj=new stringconcat();
	  long st=System.currentTimeMillis();
	  obj.concatString();
	  System.out.println(System.currentTimeMillis()-st); // concatination by string takes more time 
	  long stb=System.currentTimeMillis();
	  obj.concatStringByBuffer();
	  System.out.println(System.currentTimeMillis()-stb); // concatination by StingBuffer takes less time 
 
	}
}