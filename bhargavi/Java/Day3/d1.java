class food
{
 String name,city;
 food(String name,String city)
 {
  this.name=name;
  this.city=city;
 }
 public void taste()
 {
   System.out.println(name+city);
 }
}
class d1
{
 public static void main(String args[])
 {
  food f1=new food("idli","kerala");
  f1.taste();
 }
}