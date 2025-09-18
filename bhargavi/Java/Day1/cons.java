class sample
{
  sample()
  {
     System.out.println("hi");
  }
  static
  { 
     System.out.println("hi all");
  }
  {
     System.out.println("bye");
  }
}
class cons
{
  public static void main(String args[])
  {
     sample s1=new sample();
  }
}
  
