class sample
{
 int x=100;
 static int y=200;
 static{
 System.out.println(y);
 }
 static public void dis()
 {
  System.out.println(y);
 }
 public void print()
 {
  System.out.println(x+" "+y);
 }
}
class examp
{
 public static void main(String args[])
 {
  sample s=new sample();
  s.print();
  sample.dis();
 }
}