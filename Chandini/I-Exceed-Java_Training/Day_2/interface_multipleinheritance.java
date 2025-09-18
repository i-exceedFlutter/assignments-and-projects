interface sample
{
   void sleep();
}

interface sample1
{
   void sound();
}

class Animal implements sample, sample1
{
   public void sleep()
   {
      System.out.println("Animal sleeps");
   }
   public void sound()
   {
      System.out.println("Animal makes sound");
   }
   public void breathe()
   {
      System.out.println("Animal breathes");
   }
}

class interface_multipleinheritance
{
   public static void main(String args[])
   {
      Animal a = new Animal();
      a.sleep();
      a.sound();
      a.breathe();
   }
}