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
class grandson extends parent
{
 grandson()
 {
  System.out.println("grandson");
 }
}
class d3
{
 public static void main(String args[])
 {
  new grandson();
  new son();
 }
}