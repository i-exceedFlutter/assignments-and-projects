import java.io.Serializable;
import java.io.*;
class emp implements Serializable
{
 String name;
 int age;
 emp(String name,int age)
 {
  this.name=name;
  this.age=age;
 }
}
class obj
{
 public static void main(String arg[])throws Exception
 {
  emp e1=new emp("john",21);
  ObjectOutputStream o=new ObjectOutputStream(new FileOutputStream(new File("emp.txt")));
  o.writeObject(e1);
  ObjectInputStream i=new ObjectInputStream(new FileInputStream(new File("emp.txt")));
  emp e2=(emp)i.readObject();
  System.out.println(e2);
  System.out.println(e2.name+" "+e2.age);
 }
}
  

  