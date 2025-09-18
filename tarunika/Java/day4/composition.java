class teacher

{

qualification qd;  //Here qualification is dependent on Teacher class

String name;

int id;

teacher(String name,int id,qualification qd)

{

  this.name=name;

  this.id=id;

  this.qd=qd; 

  qd.print();

}

public void display()

{

  System.out.println("Name="+name);

  System.out.println("ID="+id);

}

}

class qualification

{

String dept;
qualification(String dept){
	this.dept=dept;
}

public void print()

{

  System.out.println("Dept="+dept);

}

}

class composition

{

public static void main(String args[])

{

  qualification qd=new qualification("CSE");

  teacher t=new teacher("Samudrala Tarunika",21,qd);
  t.display();

}

}