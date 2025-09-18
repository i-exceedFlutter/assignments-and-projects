class str
{
  StringBuffer s1=new StringBuffer("Hello");
  str()
  {
    s1.append("Java");
    System.out.println(s1);
    s1.insert(5," ");
    System.out.println(s1);
    s1.delete(5,10);
    System.out.println(s1);
  }
}
class demo1
{
 public static void main(String args[])
 {
  str s=new str();
 }
}