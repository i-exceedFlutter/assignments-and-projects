interface  collegedata
 {
    public void collegeDetails();
    public void studentDetails();
 }
 
 interface hosteldata
 {
    public void hostelDetails();
    public void studentRecords();
 }
 
 
class studentdata implements collegedata, hosteldata
{
    @Override
    public void collegeDetails(){
		System.out.println("college details");
	}
    @Override
    public void studentDetails(){
		System.out.println("student details");
	}
    @Override
    public void hostelDetails(){
		System.out.println("hostel details");
	}
    @Override
    public void studentRecords(){
		System.out.println("student records");
	}
 }
 
 
 class demomulti{
    public static void main(String[] args) {
		 studentdata obj=new studentdata();
		 obj.collegeDetails();
		 obj.studentDetails();
		 obj.hostelDetails();
		 obj.studentRecords();
     }
 }