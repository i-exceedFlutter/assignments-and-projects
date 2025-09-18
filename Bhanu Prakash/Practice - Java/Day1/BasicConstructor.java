// Online Java Compiler
// Use this editor to write, compile and run your Java code online
class student{
    String n,c;
    int a;
    student(String name,int age,String course){
        n=name;
        a=age;
        c=course;
        
    }
    public void displayStudent(){
        System.out.println(n);
        System.out.println(a);
        System.out.println(c);
        
    }
    
}
class BasicConstructor {
    public static void main(String[] args) {
       student s1=new student("Bhanu",21,"Cse");
       s1.displayStudent();
    }
}