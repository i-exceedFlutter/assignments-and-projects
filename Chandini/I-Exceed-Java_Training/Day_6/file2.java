import java.io.File;
import java.io.FileReader;
class file2
{
   public static void main(String args[]) throws Exception
   {
      File f1 = new File("datainout.java");
      FileReader fr1 = new FileReader(f1);
      int i = 0;
      while((i=fr1.read())!=-1)
      {
         System.out.print((char)i);
      }
   }
} 



