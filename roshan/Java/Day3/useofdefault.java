interface sample1data
{
    public void method1();
 
    default public void commondmethod()
    {
        System.out.println("common details of sample1data");
    }
}
interface  sample2data
{
    public void method2();
    default public void commondmethod(){
        System.out.println("common details of sample2data");
    }
}
 
class sample3data implements sample1data,sample2data
{
    @Override
    public void method1(){}
    @Override
    public void method2(){}
 
    @Override
    public void commondmethod()
    {
        System.out.println("common details");
        sample1data.super.commondmethod();
        sample2data.super.commondmethod();
    }
}
 
 
class useofdefault
{
    public static void main(String[] args) {
        sample3data obj=new sample3data();
        obj.commondmethod();
       
    }
}
 