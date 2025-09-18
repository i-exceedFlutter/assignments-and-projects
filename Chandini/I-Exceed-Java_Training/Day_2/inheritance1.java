class Animal       // Super class
{
   public void speak()
   {
      System.out.println("Animal speaks.");
   }
}

class Dog extends Animal    // Derived class
{
   public void spk()
   {
      System.out.println("Dog barks.");
   }
}

class inheritance1
{
   public static void main(String args[])
   {
      Dog a = new Dog();
      a.speak();
      a.spk();
   }
}