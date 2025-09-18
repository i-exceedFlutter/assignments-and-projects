class sample
{
    sample()
    {
        System.out.println("This is a default constructor.");
    }
    sample(String name)
    {
        System.out.println(name);
    }
    sample(int x, int y)
    {
        System.out.println(x-y);
    }
}

class overloading
{
   public static void main(String args[])
   {
      sample s1 = new sample();
      sample s2 = new sample("Chandini");
      sample s3 = new sample(90, 43);
   }
}