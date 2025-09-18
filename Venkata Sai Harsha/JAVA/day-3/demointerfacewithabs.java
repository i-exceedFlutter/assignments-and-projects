interface collegedata
{
    String college="GEC";
 
    public void collegeDetails();
 
    default public void studentDetails()
    {
        System.out.println("Students information incontext of college");
    }
}
 
interface  hosteldata
{
    public void hostelDetails();
    default public void studentDetails(){
        System.out.println("Students information incontext of hostel");
    }
}
abstract  class sampleabs
 {
 
    public sampleabs() {
    }
   
     abstract  public void abstractmethod1();
   //  abstract  public void abstractmethod2();
     
 }
class studentData extends sampleabs implements collegedata,hosteldata
{
    @Override
    public void abstractmethod1(){
		System.out.println("abstract method1");
	}
 
    @Override
    public void collegeDetails(){
        String college="amrita";
        System.out.println(college);
    }
    @Override
    public void hostelDetails(){}
 
    @Override
 
    public void studentDetails()
    {
        System.out.println("student details");
        collegedata.super.studentDetails();
        hosteldata.super.studentDetails();
    }
}
 
 
class demointerfacewithabs
{
    public static void main(String[] args) {
        studentData obj=new studentData();
        obj.studentDetails();
		obj.collegeDetails();
       
    }
}