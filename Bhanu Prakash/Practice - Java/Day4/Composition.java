class Teacher{
    Qualification Qt;
    String Name,Dept;
    Teacher(String Name,String Dept){
        Qt=new Qualification("BTech","MTech",3);
        this.Name=Name;
        this.Dept=Dept;
    }
    public void DisplayTeacher(){
        System.out.println("Name: "+Name);
        System.out.println("Dept: "+Dept );
        Qt.DisplayQualification();
    }
}

class Qualification{
    String UG,PG;
    int Yoe;
    public Qualification(String UG, String PG,int Yoe){
        this.UG=UG;
        this.PG=PG;
        this.Yoe=Yoe;
    }
    public void DisplayQualification(){
        System.out.println("UG Degree: "+UG);
        System.out.println("PG Degree: "+PG);
        System.out.println("Years of Experience: "+Yoe);
    }
}
class Composition {
    public static void main(String[] args) {
        Teacher t= new Teacher("Bhanu","CSE");
        t.DisplayTeacher();
        System.out.println("End\tf");
    }
}