class comp
{
 String comp,city;
 comp(String comp,String city)
 {
  this.comp=comp;
  this.city=city;
 }
 public void display()
 {
  System.out.println("Comp="+comp+"City="+city);
 }
}
class emp
{
 String ename,ecity;
 comp c;
 emp(String ename,String ecity,comp c)
 {
  this.ename=ename;
  this.ecity=ecity;
  this.c=c;
 }
 public void display()
 {
  System.out.println("Emp="+ename+"EmpCity="+ecity);
  c.display();
 }
}
class demo6
{
 public static void main(String args[])
 {
  comp c1=new comp("IBM","blore");
  emp e1=new emp("john","dvg",c1);
  e1.display();
  comp c2=new comp("IBM","blore");
  emp e2=new emp("john2","dvgs",c2);
  e2.display();
  
 }
}