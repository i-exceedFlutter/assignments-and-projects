class person
{
  String name;  // Instance variables which are defined inside class but outside methods, specific to object 
  int age;

  person(String name, int age)
  {
    this.name = name;
    this.age = age;
  }
 
  public void display()
  {
    System.out.println("Name : "+name);
    System.out.println("Age : "+age);
  }
}

class instancevariables
{
  public static void main(String args[])
  {
    person p1 = new person("Kiran",32);
    person p2 = new person("Anu",19);

    p1.display();
    p2.display();
  }
}