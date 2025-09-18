import java.io.ByteArrayInputStream;
class bytearrin
{
 public static void main(String args[])
 {
  byte a[]={10,11,12,13,14,15};
  ByteArrayInputStream bi=new ByteArrayInputStream(a);
  int i=0;
  while((i=bi.read())!=-1)
  {
   System.out.println(i);
  }
 }
}
  