class stringbuilderfunction{
	public static void main(String args[]){
		StringBuilder str=new StringBuilder("welcome");
		str.append(" to I-Exceed");
		System.out.println(str);
		System.out.println(str.length());
		System.out.println(str.insert(7, " bye"));
		//System.out.println(str.reverse());
		System.out.println(str.replace(8,11,"to"));
	}
}