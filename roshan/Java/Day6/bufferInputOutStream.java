import java.io.File;
import java.io.FileOutputStream;
import java.io.FileInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedInputStream;
 
class bufferInputOutStream
{
   public static void main(String asd[]) throws Exception
	{
	    String msg="hi engineers how is java programming language";
 
       	    BufferedOutputStream bos=new BufferedOutputStream(new FileOutputStream(new File("sample.txt")));
 
		bos.write(msg.getBytes());
		bos.close();
 
	   BufferedInputStream bin=new BufferedInputStream(new FileInputStream(new File("sample.txt")));
	        int i=0;
 
		while((i=bin.read())!=-1)
		{
		   System.out.print((char)i);
		}

 
	}
}