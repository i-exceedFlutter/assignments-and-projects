
abstract class Sample{
    Sample(){
        System.out.println("Super Class");
    }
    public abstract void Display(int x,int y);
}
class child extends Sample{
    child(){
        super();
        System.out.println("child");
    }
    public void Display(int x,int y){
        
        System.out.println("Add: "+(x+y));
        
    }
}
class absSuper{
    public static void main(String[] args) {
        Sample obj=new child();
        obj.Display(10,20);
        }
}