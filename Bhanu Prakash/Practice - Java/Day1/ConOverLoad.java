// Online Java Compiler
// Use this editor to write, compile and run your Java code online
class student{
    
    student(){
        this("bhanu",21);
       System.out.println("Student Sec");
        
    }
    student(String name,int age){
        this("Prakash","CSE");
        System.out.println("Name: "+name+" Age:"+age);
    }
    student(String name,String course){
        System.out.println("Name: "+name+" Course:"+course);
    }
    
    
    
}
class ConOverLoad {
    public static void main(String[] args) {
       student s1=new student();
      
 
       
    }
}