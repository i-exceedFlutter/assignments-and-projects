class stu
{
 String name="hi";
 int age;
 stu(String name)
 { 
  this.name=name;
  System.out.println(this.name);
 }
 stu(String name,int age)
 {
  System.out.println(name+age);
 }
}
class d2
{
 public static void main(String args[])
 {
  stu s1=new stu("hello");
 }
}