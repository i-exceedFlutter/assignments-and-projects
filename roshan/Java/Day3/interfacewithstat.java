interface one
 {
    static public void getMe(){
        System.out.println("static method from interface");
    }
 }
 
 class sample implements one
 {
    sample(){}
 
 }
 
class interfacewithstat
 {
    public static void main(String[] args) {
        one.getMe();
    }
 }