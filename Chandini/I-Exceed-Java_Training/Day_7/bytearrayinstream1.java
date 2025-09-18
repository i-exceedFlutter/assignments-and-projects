import java.io.ByteArrayInputStream;
 
class bytearrayinstream1

{

   public static void main(String asd[])

	{

	  byte x[]={43,44,45,46,47,48};
 
	  ByteArrayInputStream bis=new ByteArrayInputStream(x);
 
	  int i=0;
 
	  while((i=bis.read())!=-1)

		{

		  System.out.println(i);

		}
 
	}

}	
 