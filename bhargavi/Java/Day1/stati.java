class stat
{
 static int x;
 stat()
 {
   x++;
 }
 public void display()
 {
   System.out.println(x);
 }
}
class stati
{
 public static void main(String args[])
 {
   stat s1=new stat();
   stat s2=new stat();
   stat s3=new stat();
   s1.display();
   s2.display();
   s3.display();
 }
}
   