import java.io.*;
 
class datainout

{

    public static void main(String asd[]) throws Exception

	{

	   DataOutputStream dout=new DataOutputStream(new FileOutputStream(new File("Sampledata.txt")));

	   dout.writeInt(12);

	   dout.writeBoolean(true);

	   dout.writeLong(3243434);

	   dout.close();
 
	   DataInputStream din=new DataInputStream(new FileInputStream(new File("Sampledata.txt")));

	   System.out.println(din.readInt());

	   System.out.println(din.readBoolean());

	   System.out.println(din.readLong());

	   din.close();
	}

}
 