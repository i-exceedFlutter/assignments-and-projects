import java.io.File;

import java.io.FileReader;
 
class fileread

{

    public static void main(String asd[]) throws Exception

	{

	   FileReader fr=new FileReader(new File(asd[0]));

	   int i=0;

	   while((i=fr.read())!=-1)

		{

	    	 System.out.print((char)i);

		}

	}

}
 