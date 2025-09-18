class stati
{
 static String name="hello";
 static void display()
 {
  System.out.println(name);
 }
 static void print()
 {
  System.out.println("bye"+name);
 }
 static{
  name="Hi";
  display();
  print();
 }
}
class stat1
{
 public static void main(String args[])
 {
  stati s=new stati();
  }
}