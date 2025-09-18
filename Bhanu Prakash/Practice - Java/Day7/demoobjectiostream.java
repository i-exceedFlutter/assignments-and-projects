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
 
class demoobjectiostream
{ 
    public static void main(String args[]) throws Exception{
        employee e1= new employee(374,"Bhanu","Trainee",10000);
        FileOutputStream f=new FileOutputStream("employee.txt");
        ObjectOutputStream Os= new ObjectOutputStream(f);
        Os.writeObject(e1);
	Os.close();
        f.close();

	FileInputStream fin = new FileInputStream("employee.txt");
        ObjectInputStream Ois= new ObjectInputStream(fin);
        employee e2= (employee)Ois.readObject();
 	Ois.close();
        fin.close();
        System.out.println(e2.empname);

    }
    
}