import java.io.*;
class sample{
	public static void main(String[] args){
		String str="welcome";
		str=str.concat(" sai!");
		System.out.println(str);
		StringBuffer s1=new StringBuffer();
		//System.out.println(s1.capacity());
		System.out.println(s1.ensureCapacity(10));
		
	}
}