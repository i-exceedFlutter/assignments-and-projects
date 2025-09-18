interface sample
{
 static void dis()
 {
  System.out.println("static method");
 }
}
class sam implements sample
{ 
 sam()
 { }
 }
}
class st
{
 public static void main(String args[])
 {
  sample.dis();
 }
}