class stringconcat
   {
     public void concatString()
	{
	   String str="Samudrala ";
	   str= str + "Tarunika";    // String is immutable so "+" is used
	   System.out.println(str);	
	}
 
     public void concatStringByBuffer()  //StringBuffer is mutable so append is used to concat
	{
	    StringBuffer str1 = new StringBuffer("Samudrala ");
    	    str1.append("Tarunika");
            System.out.println(str1);
	}
   }
class demostringconcat
{
    public static void main(String asd[])
	{
	   stringconcat st=new stringconcat();
	   st.concatString();
	   st.concatStringByBuffer();
	}
}