class student
{
    String name,dept;
    int age;
    has_rel_address ad;
    student(String name, int age, String dept, has_rel_address ad)
    {
       this.name=name;
       this.age=age;
       this.dept=dept;
       this.ad=ad;
    }
    public void displaystudent()
    {
      System.out.println("Student name : "+name);
      System.out.println("Age : "+age);
      System.out.println("Department name : "+dept);
      ad.displayaddress();
    }
}

class has_rel_student
{
   public static void main(String args[])
   {
      has_rel_address a = new has_rel_address("Sony","Bengaluru",560034);
      student s = new student("Chandini", 21, "CSE", a);
      s.displaystudent();
   }
}