// Online Java Compiler
// Use this editor to write, compile and run your Java code online

class Main {
    public static void main(String[] args) {
        StringBuilder str =new StringBuilder("Bhanu");
        System.out.println(str);
        str.append(" Prakash");
        System.out.println(str);
        str.insert(2,"ZZ");
         System.out.println(str);
        str.reverse();
        System.out.println(str);
        str.reverse();
        str.replace(2,4,"AA");
         System.out.println(str);
        StringBuilder str1 =new StringBuilder("");
          System.out.println(str1.length());
           System.out.println(str1.capacity());
    }
}
