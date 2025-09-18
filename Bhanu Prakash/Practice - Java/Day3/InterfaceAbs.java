interface collegedata {
    String college = "Amrita";

    public void collegeDetails();

    default public void studentDetails() {
        System.out.println("from CollegeData");
    }
}

interface hosteldata {
    public void hostelDetails();

    default public void studentDetails() {
        System.out.println("from HostelData");
    }
}

abstract class sampleabs {
    public sampleabs() {
        
    }

    abstract public void abstractmethod1();
}

class studentData extends sampleabs implements collegedata, hosteldata {
    @Override
    public void abstractmethod1() {
        System.out.println("abstract 1 ");
    }

    @Override
    public void collegeDetails() {
        System.out.println(college);
    }

    @Override
    public void hostelDetails() {
        System.out.println("Hostel details");
    }

    @Override
    public void studentDetails() {
        System.out.println("Student Details:");
        collegedata.super.studentDetails();
        hosteldata.super.studentDetails();
    }
}

public class InterfaceAbs {
    public static void main(String[] args) {
        studentData obj = new studentData();
        obj.abstractmethod1();
        obj.studentDetails();
    }
}
