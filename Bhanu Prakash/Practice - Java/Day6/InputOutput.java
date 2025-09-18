import java.io.File;
import java.io.FileOutputStream;
import java.io.FileInputStream;
 
class InputOutput{
	public static void main(String asd[]) throws Exception{
		String msg="hi engineers how is java programming language 11";
		FileOutputStream fos=new FileOutputStream("sai.txt");
		fos.write(msg.getBytes());
		fos.close();
		
		FileInputStream fin=new FileInputStream("sai.txt");
		int i=0;
		while((i=fin.read())!=-1){
			System.out.print((char)i);
		}
		fin.close();
	}
}