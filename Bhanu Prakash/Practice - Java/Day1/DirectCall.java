// Online Java Compiler
// Use this editor to write, compile and run your Java code online
class student{
    String name,course;
    int age;
    student(String name,int age,String course){
        this.name=name;
        this.age=age;
        this.course=course;
        displayStudent();
        
    }
    public void displayStudent(){
        System.out.println(name);
        System.out.println(age);
        System.out.println(course);
        
    }
    
}
class DirectCall {
    public static void main(String[] args) {
       student s1=new student("Bhanu",21,"Cse");
      
 
       
    }
}