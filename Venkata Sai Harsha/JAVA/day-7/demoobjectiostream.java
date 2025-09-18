import java.io.Serializable;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.File;

class employee implements Serializable{
	String empname,desig;
	int empcode;
	double salary;
	
	employee(int empcode, String empname, String desig, double salary){
		this.empcode=empcode;
		this.empname=empname;
		this.desig=desig;
		this.salary=salary;
	}
	
}
class demoobjectiostream{
	public static void main(String asd[]) throws Exception{
		employee e1=new employee(1,"sai","software",10000);
		ObjectOutputStream o=new ObjectOutputStream(new FileOutputStream(new File("employee.txt")));
	    o.writeObject(e1);
 
	    ObjectInputStream ois=new ObjectInputStream(new FileInputStream(new File("employee.txt")));
	    employee e2=(employee)ois.readObject();
	    System.out.println(e2);
	    System.out.println(e2.empname);
	}
}