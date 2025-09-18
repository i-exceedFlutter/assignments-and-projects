interface collegedata{
    public void collegeDetails();
 
    default public void studentDetails()
    {
        System.out.println("Students information incontext of college");
    }
}
interface  hosteldata{
    public void hostelDetails();
    default public void studentDetails(){
        System.out.println("Students information incontext of hostel");
    }
}
 
class studentData implements collegedata,hosteldata{
    @Override
    public void collegeDetails(){
		System.out.println("collegeDetails");
	}
    @Override
    public void hostelDetails(){
		System.out.println("hostelDetails");
	}
 
    @Override
    public void studentDetails(){
        System.out.println("student details");
        collegedata.super.studentDetails();
        hosteldata.super.studentDetails();
    }
}
 
 
class demointerfacewithdef{
    public static void main(String[] args) {
        studentData obj=new studentData();
        obj.studentDetails();
		obj.collegeDetails();
		obj.hostelDetails();
       
    }
}