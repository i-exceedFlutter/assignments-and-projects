import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.File;
import java.io.FileInputStream;
 
class demobytearrayos
{
   public static void main(String asd[]) throws Exception
	{
	   String str="hi engineers how are you all happy wkend with java";
	   ByteArrayOutputStream bos=new ByteArrayOutputStream();
	   bos.writeBytes(str.getBytes());
 
	   FileOutputStream fos1=new FileOutputStream(new File("bytearray1.txt"));
	   FileOutputStream fos2=new FileOutputStream(new File("bytearray2.txt"));
 
	   bos.writeTo(fos1);
	   bos.writeTo(fos2);
 
	   FileInputStream fin=new FileInputStream(new File("bytearray2.txt"));
	   int i=0;
	   while((i=fin.read())!=-1)
		{
		   System.out.print((char)i);
		}

 
	}
}