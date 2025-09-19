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
 
 
 class studentdata implements  collegedata, hosteldata
 {
    @Override
    public void collegeDetails(){}
    @Override
    public void studentDetails(){}
    @Override
    public void hostelDetails(){}
    @Override
    public void studentRecords(){}
 }
 
 
 class multi_inheri_diamond
  {
     public static void main(String[] args) {
         studentdata obj=new studentdata();
         obj.collegeDetails();
         obj.studentDetails();
         obj.hostelDetails();
         obj.studentRecords();
     }
  }
 