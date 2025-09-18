import java.io.FileOutputStream;

public class OutputFile {
    public static void main(String[] args) throws Exception {
        FileOutputStream fout = new FileOutputStream("harsha.txt");
        String data = "Hello, Bhanu!";
        fout.write(data.getBytes());
        fout.close();
    }
}