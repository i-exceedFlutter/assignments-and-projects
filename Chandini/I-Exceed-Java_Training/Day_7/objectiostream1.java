import java.io.Serializable;

import java.io.*;
 
class employee implements Serializable

  {

    String empname,desig;

    int empcode;

    double salary;

    employee(int empcode,String empname,String desig,double salary)

	{

	   this.empcode=empcode;

	   this.empname=empname;

	   this.desig=desig;

	   this.salary=salary;

	}

  }
 
class objectiostream1

{ 

  public static void main(String asd[]) throws Exception

	{

	    employee e1=new employee(1,"Chandini","Software Engg",120000);
 
	    ObjectOutputStream o=new ObjectOutputStream(new FileOutputStream(new File("employee.txt")));

	    o.writeObject(e1);
 
	    ObjectInputStream ois=new ObjectInputStream(new FileInputStream(new File("employee.txt")));

	    employee e2=(employee)ois.readObject();

	    System.out.println(e2);

	    System.out.println(e2.empname);

	}

}
 