import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
class inout
{
 public static void main(String args[])throws Exception
 {
  String msg="hello java";
  FileOutputStream f=new FileOutputStream(new File("sample.txt"));
  f.write(msg.getBytes());
   int i=0;
   f.close();
  FileInputStream fi=new FileInputStream(new File("sample.txt"));
  while((i=fi.read())!=-1)
  {
   System.out.print((char)i);
  }
  fi.close();
 
}
}
  