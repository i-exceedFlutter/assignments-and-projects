class parent
{
 public void dis()
 {
  System.out.println("parent");
 }
}
class son extends parent
{
 public void dis()
 {
  System.out.println("son");
 }
}
class d1
{
 public static void main(String args[])
 {
  new parent().dis();
 }
}


