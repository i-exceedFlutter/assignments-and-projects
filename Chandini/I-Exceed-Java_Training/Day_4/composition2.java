class teacher
{
qualification qd;
String name;
int id;
teacher(String name,int id,qualification qd)
{
  this.name=name;
  this.id=id;
  this.qd=qd; 
}
public void display()
{
  System.out.println("Name="+name);
  System.out.println("ID="+id);
  qd.print();
}
}

class qualification
{
String dept;
qualification(String dept)
{
 this.dept=dept;
}
public void print()
{
  System.out.println("Dept="+dept);
}
}

class composition2
{
public static void main(String args[])
{
  qualification qd=new qualification("CSE");
  teacher t=new teacher("Don",98,qd);
  t.display();
}
}

 