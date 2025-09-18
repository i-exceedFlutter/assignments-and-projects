import java.io.*;

class demobytearrayos{
	public static void main(String asd[]) throws Exception{
		String str="hi engineers how are you all happy weekend with java 1223\n";
		ByteArrayOutputStream bos=new ByteArrayOutputStream();
		bos.writeBytes(str.getBytes());
		System.out.print(bos);

		FileOutputStream fos1=new FileOutputStream(new File("bytearray1.txt"));
		FileOutputStream fos2=new FileOutputStream(new File("bytearray2.txt"));

		bos.writeTo(fos1);
		bos.writeTo(fos2);

		FileInputStream fin=new FileInputStream(new File("bytearray2.txt"));
		int i=0;
		while((i=fin.read())!=-1){
			System.out.print((char)i);
		}
	}
}