import java.io.FileReader;

public class read {
    public static void main(String[] args) throws Exception {
        FileReader fr = new FileReader("readfileex.java");
        int i;
        while ((i = fr.read()) != -1) {
            System.out.print( (char) i);
        }
        fr.close();
    }
}