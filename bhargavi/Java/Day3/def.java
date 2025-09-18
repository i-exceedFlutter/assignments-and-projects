interface sample
{
 public void dis();
 default public void print()
 {
   System.out.println("hello");
 }
}
class inter2 implements sample
{
 @Override
 public void dis()
 {
   System.out.println("bye");
 }
}
class def
{
 public static void main(String arg[])
 {
  inter2 i=new inter2();
 }
}