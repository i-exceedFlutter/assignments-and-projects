// Online Java Compiler
// Use this editor to write, compile and run your Java code online
class student{
    String name,course;
    int age;
    student(String name,int age,String course){
        this.name=name;
        this.age=age;
        this.course=course;
        
    }
    public void displayStudent(){
        System.out.println(name);
        System.out.println(age);
        System.out.println(course);
        
    }
    
}
class ThisKey {
    public static void main(String[] args) {
       student s1=new student("Bhanu",21,"Cse");
       student s2=new student("Prakash",24,"Mech");
       s1.displayStudent();
       System.out.println(" ");
       s2.displayStudent();
    }
}