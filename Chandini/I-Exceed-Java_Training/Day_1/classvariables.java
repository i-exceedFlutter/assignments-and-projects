class employee
{
  String name;
  int id;
  static String company = "Google";  // Class variables - static variables which is shared by all the objects 

  employee(String name, int id)
  {
     this.name = name;
     this.id = id;
  }
  
  public void display()
  {
     System.out.println("Name : "+name);
     System.out.println("ID : "+id);
     System.out.println("Company : "+company);
  }
}

class classvariables
{
  public static void main(String args[])
  {
     employee e1 = new employee("John", 100);
     employee e2 = new employee("Mary", 101);
     employee e3 = new employee("Joel", 103);

     e1.display();
     e2.display();
     e3.display();
  }
}