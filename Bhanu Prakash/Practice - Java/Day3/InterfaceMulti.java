interface collegedata{
    public void collegeDetails();
    default public void studentDetails(){
        System.out.println("from CollegeData");
    }
}
interface hosteldata{
    public void HostelDetails();
    default public void studentDetails(){
        System.out.println("From HostelData");
    }
    
}
class student implements collegedata,hosteldata{
    @Override
    public void collegeDetails(){
        
    }
    @Override
    public void HostelDetails(){
    }
    @Override
    public void studentDetails(){
        System.out.println("Student Details:");
        collegedata.super.studentDetails();
        hosteldata.super.studentDetails();  
        
    }
    
}

class InterfaceMulti {
    public static void main(String args[]){
        student obj=new student();
        obj.studentDetails();
    }
}
