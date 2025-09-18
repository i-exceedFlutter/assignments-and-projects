class employee
{
    String name;
    int age;
    employee(String name,int age)
    {
      this.name=name;
      this.age=age;
      System.out.println(this);
      this.display();
    }
    public void display()
    {
      System.out.println(name);
      System.out.println(age);
    }
}
class demo
{
  public static void main(String args[])
  {
    employee e1=new employee("dev",66);
    System.out.println(e1);
  }
}
