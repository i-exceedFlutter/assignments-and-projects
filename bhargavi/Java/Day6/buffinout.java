import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
class buffinout
{
 public static void main(String args[])throws Exception
 {
  String msg="hello java";
  BufferedOutputStream f=new BufferedOutputStream(new FileOutputStream(new File("sample.txt")));
  f.write(msg.getBytes());
   int i=0;
   f.close();
  BufferedInputStream fi=new BufferedInputStream(new FileInputStream(new File("sample.txt")));
  while((i=fi.read())!=-1)
  {
   System.out.print((char)i);
  }
  fi.close();
 
}
}