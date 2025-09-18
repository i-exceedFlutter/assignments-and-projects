import java.io.*;
class datainout
{
 public static void main(String args[])throws Exception
 {
   DataOutputStream f=new DataOutputStream(new FileOutputStream(new File("sampledata.txt")));
   f.writeInt(10);
   f.writeDouble(1.0);
   f.writeLong(1234567);
   f.close();
   DataInputStream fi=new DataInputStream(new FileInputStream(new File("sampledata.txt")));
   System.out.println(fi.readInt());
   System.out.println(fi.readDouble());
   System.out.println(fi.readLong());
   fi.close();
  }
}