class string {
    public static void main(String[] args) {
        String str1 = "Hello";
        String str2 = str1; // str2 also points to "Hello"

        str1 = str1 + " World"; // new object created

        System.out.println("str1: " + str1); // Hello World
        System.out.println("str2: " + str2); // Hello
    }
}
