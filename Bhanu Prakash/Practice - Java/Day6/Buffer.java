import java.io.File;
import java.io.FileOutputStream;
import java.io.FileInputStream;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
 
class Buffer{
	public static void main(String asd[]) throws Exception{
		String msg="hi engineers how is java programming language";
		BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream("sai.txt"));
		bos.write(msg.getBytes());
		bos.close();
		BufferedInputStream bin = new BufferedInputStream(new FileInputStream("sai.txt"));
		int i=0;
		while((i=bin.read())!=-1){
			System.out.print((char)i);
		}
		bin.close();
	}
}
 