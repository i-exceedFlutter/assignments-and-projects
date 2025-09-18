class stringbuilder
{
   public static void main(String args[])
   {
      StringBuilder sb = new StringBuilder("Hello");
      System.out.println("Original string : "+sb);
     
      sb.append(" , How are you?");
      System.out.println("Modified string : "+sb);
   }   
}