class sample
{
   String name = "kiran";
   sample()
   {
      System.out.println("This is a default constructor.");
   }
   sample(String name)
   {
      this.name = name;
      System.out.println(name);
   }
}

class sample1 extends sample
{
   sample1()
   {
      name = "kumar";
      System.out.println(name);
   }
}

class inheritance2
{
   public static void main(String args[])
   {
      sample s1 = new sample("hello");
      sample1 s2 = new sample1();
   }
}   