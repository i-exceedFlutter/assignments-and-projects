
 abstract class Animal 
{
    abstract void sound();
    
    void sleep() 
    {
        System.out.println("Sleeping...");
    }
}

class Dog extends Animal 
{
    void sound() 
    {
        System.out.println("Dog barks");
    }
}

class Cat extends Animal 
{
    void sound() 
    {
        System.out.println("Cat meows");
    }
}

class demo4 
{
    public static void main(String[] args) 
    {
        Cat c=new Cat();  
        c.sound();
        c.sleep();  
    }
}
