interface collegedata{
    public void collegeDetails();
    public void studentDetails();
}
interface hosteldata{
    public void HostelDetails();
    public void studentRecords();
    
}
class student implements collegedata,hosteldata{
    @Override
    public void collegeDetails(){
        
    }
    @Override
    public void studentDetails(){
    }
    @Override
    public void HostelDetails(){
    }
    
    
    @Override
    public void studentRecords(){
        System.out.println("Bhan8");
        
    }
    
}

class multi {
    public static void main(String args[]){
        student obj=new student();
        obj.studentRecords();
 	obj.collegeDetails();
        obj.studentDetails();
        obj.hostelDetails();
        obj.studentRecords();
    }
}
