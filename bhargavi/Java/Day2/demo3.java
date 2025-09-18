class comp
{
 String name,city;
 comp(String name,String city)
 {
  this.name=name;
  this.city=city;
 }
 public void display()
 {
   System.out.println("CompName="+name+"CompCity="+city);
 }
}
class emp extends comp
{
 String empname,empcity;
 emp(String name,String city,String empname,String empcity)
 {
  super(name,city);
  this.empname=empname;
  this.empcity=empcity;
 }
 public void display()
 {
   super.display();
   System.out.println("EmpName="+empname+"EmpCity="+empcity);
 }
}
class demo3
{
 public static void main(String args[])
 {
  emp e1=new emp("IBM","blore","john","pune");
  e1.display();
  emp e2=new emp("ABB","delhi","ricky","dvg");
  e2.display();
 }
}