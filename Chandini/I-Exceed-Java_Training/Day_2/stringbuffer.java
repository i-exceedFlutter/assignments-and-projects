class stringbuffer
{
    public static void main(String args[])
    {
       StringBuffer sb = new StringBuffer("Hello");
       System.out.println("Original string : "+sb);

       sb.append(" World");
       System.out.println("Modified string : "+sb);
    }
}