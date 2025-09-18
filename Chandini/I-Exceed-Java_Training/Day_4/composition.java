class teacher
 {
    qualification qt;
    String name,dept;
     teacher(String name,String dept)
     {
        qt=new qualification("BE","ME",25);
        this.name=name;
        this.dept=dept;
     }
     public void displayTeacher()
        {
            System.out.println("Trainer name\t"+name);
            System.out.println("Department\t"+dept);
            qt.displayQualification();
        }
 }
 
 class qualification
  {
     String ug,pg;
     int yoe;
 
    public qualification(String ug,String pg,int yoe) {
        this.ug=ug;
        this.pg=pg;
        this.yoe=yoe;
    }
 
    public void displayQualification()
    {
        System.out.println("UG Degree\t"+ug);
        System.out.println("PG Degree\t"+pg);
        System.out.println("Experience\t"+yoe);
    }
     
  }
 
  class composition
   {
     public static void main(String[] args) {
         teacher t=new teacher("Sathish","L&D");
         t.displayTeacher();
     }
   }
   
 