// Online Java Compiler
// Use this editor to write, compile and run your Java code online
class student{
    static String Course="AI";
    String name;
    int age;
     {
        System.out.println("New Guy");
    }
    static{
        System.out.println("The King ");
    }
    
    student(String name,int age){
        this.name=name;
        this.age=age;
        DisplayStudent();
        
    }
   
    public void DisplayStudent(){
        System.out.println("Name: "+name+" Age:"+age+" Course: "+student.Course);
        
    }
   
    static{
        System.out.println("The Q ");
    }
    
    
    
    
}
class MixofAll {
    public static void main(String[] args) {
       student s1=new student("Bhanu",21);
       student s2=new student("Prakash",24);
      
 
       
    }
}