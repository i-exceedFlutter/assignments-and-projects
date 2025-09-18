abstract class Animal
{
   abstract void sound();     // abstract method
   void sleep()
   {
      System.out.println("Sleeping");
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

class abstractclass2
{
   public static void main(String args[])
   {
      Animal d = new Dog();
      d.sound();
      d.sleep();

      Animal c = new Cat();
      c.sound();
      c.sleep();
   }
}