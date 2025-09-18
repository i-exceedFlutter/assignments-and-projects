

import java.io.File;

import java.io.FileOutputStream;

import java.io.FileInputStream;
 
class fileinoutstream

{

   public static void main(String asd[]) throws Exception

	{

	    String msg="hi engineers how is java programming language";
 
       	    FileOutputStream fos=new FileOutputStream(new File("example.txt"));
 
		fos.write(msg.getBytes());
 
	    FileInputStream fin=new FileInputStream(new File("example.txt"));

	        int i=0;
 
		while((i=fin.read())!=-1)

		{

		   System.out.print((char)i);

		}

 
	}

}
 