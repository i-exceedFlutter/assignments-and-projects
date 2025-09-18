

import java.io.File;

import java.io.FileOutputStream;

import java.io.FileInputStream;
 
class demoFileInputOutStream

{

   public static void main(String asd[]) throws Exception

	{

	    String msg="hi engineers how is java programming language";
 
       	    FileOutputStream fos=new FileOutputStream(new File("sample.txt"));
 
		fos.write(msg.getBytes());
 
	    FileInputStream fin=new FileInputStream(new File("sample.txt"));

	        int i=0;
 
		while((i=fin.read())!=-1)

		{

		   System.out.print((char)i);

		}

 
	}

}
 