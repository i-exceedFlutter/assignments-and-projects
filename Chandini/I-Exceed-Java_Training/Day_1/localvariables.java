class localvariables
{
  public void showmessage()
  {
    String message = "This is a local variable";  // Local variable which is declared inside methods and exists only in that method scope 
    System.out.println(message);
  }

  public static void main(String args[])
  {
     localvariables obj = new localvariables();
     obj.showmessage();
  }
}

