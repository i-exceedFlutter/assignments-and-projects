class inh
{
  String name="john";
  public void display(String name)
  {
    this.name=name;
    System.out.println(name);
  }
}
class abc extends inh
{
  abc()
  {
     name="Abhay";
     System.out.println(name);
  }
}
class demo2
{
 public static void main(String args[])
 {
   abc a=new abc();
   a.display("rocky");
 }
}
    