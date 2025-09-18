import java.lang.reflect.Method;
 
class sample
 {
     private String greet="welcome";
 
     private void display()
     {
        System.out.println("Accessing this method outside of the class");
     }
 }
 
 class Encap
  {
    public static void main(String[] args)throws Exception {
        Class c=Class.forName("sample");
        Object o=c.newInstance();
        Method m1=c.getDeclaredMethod("display");
        m1.setAccessible(true);
        m1.invoke(o);
 
 
    }
  }