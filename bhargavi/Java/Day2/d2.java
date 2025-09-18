class parent
{
 parent()
 {
  System.out.println("parent");
 }
}
class son extends parent
{
 son()
 {
  System.out.println("son");
 }
}
class grandson extends son
{
 grandson()
 {
  System.out.println("grandson");
 }
}
class d2
{
 public static void main(String args[])
 {
  new grandson();
 }
}