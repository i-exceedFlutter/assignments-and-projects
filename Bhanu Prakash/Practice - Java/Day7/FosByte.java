import java.io.*;

class FosByte{
    public static void main(String args[]){
    try {
        String str="Hi Hello from I Exceed";
        ByteArrayOutputStream bos=new ByteArrayOutputStream();
        bos.writeBytes(str.getBytes());
        
        FileOutputStream fos1= new FileOutputStream(new File ("bytearray1.txt"));
        FileOutputStream fos2= new FileOutputStream(new File("bytearray2.txt"));
        
        bos.writeTo(fos1);
        bos.writeTo(fos2);
        FileInputStream fin=new FileInputStream(new File("bytearray2.txt"));
        int i=0;
        
        while((i=fin.read())!=-1){
            System.out.print((char)i);
        }
       }catch (IOException e) {
            System.out.println("An error occurred: " + e.getMessage());
        }
        
    }
}