import java.io.FileOutputStream;

public class writefileex {
    public static void main(String[] args) throws Exception {
        FileOutputStream fout = new FileOutputStream("harsha.txt");
        String data = "Hello, Java IO harsha!";
        fout.write(data.getBytes());
        fout.close();
    }
}
