interface collegedata
{
    public void collegeDetails(); // the classes declared in the interfaces will be abstract automatically
 
    default public void studentDetails() // since both the method names are same in both the classes, we use interfaces as java doesnt support multiple inheritence
    {
        System.out.println("Students information incontext of college");
    }
}
interface  hosteldata
{
    public void hostelDetails();
	
    default public void studentDetails()
	{
        System.out.println("Students information incontext of hostel");
    }
}
 
class studentData implements collegedata,hosteldata // we use implements in case of interface
{
    @Override
    public void collegeDetails(){}
    @Override
    public void hostelDetails(){}
 
    @Override
    public void studentDetails()
    {
        System.out.println("student details");
        collegedata.super.studentDetails(); // in this way we call both the methods w.r.t their classes
        hosteldata.super.studentDetails();
    }
}
 
class demointerfacewithdef
{
    public static void main(String[] args) 
	{
        studentData obj = new studentData();
        obj.studentDetails();
       
    }
}