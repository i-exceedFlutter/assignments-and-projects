class emp
{
  String name;
  double sal;
  static String city="Blore";
  emp(String name,double sal)
  {
     this.name=name;
     this.sal=sal;
     this.display();
  }
  public void display()
  {
    System.out.println(name);
    System.out.println(sal);
    System.out.println(emp.city);
  }
}
class employee
{
 public static void main(String args[])
 {
   emp e1=new emp("john",290000);
   emp e2=new emp("ricky",320000);
 }
}