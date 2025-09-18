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
 
 
 class studentData implements  collegedata, hosteldata
 {  
    String name;
    int age;
    String collegeName,hostelName;
    studentData(String name,String collegeName,String hostelName,int age)
    {
       this.name=name;
       this.age=age;
       this.collegeName=collegeName;
       this.hostelName=hostelName;
    }
    @Override
    public void collegeDetails()
    {
      System.out.println("College="+collegeName);
    }
    @Override
    public void studentDetails()
    {
     System.out.println("Student="+name+" age is"+age);
    }
    @Override
    public void hostelDetails()
    {
     System.out.println("Hostel="+hostelName);
    }
    @Override
    public void studentRecords()
    {
     System.out.println("Student="+name);
    }
 }
 
 
 class inter
  {
     public static void main(String[] args) {
         studentData obj=new studentData("john","RV","Jeeva",22);
         obj.collegeDetails();
         obj.studentDetails();
         obj.hostelDetails();
         obj.studentRecords();
     }
  }