class stringconcat{
	public void concatString(){
		String str="iexceed";
		for(var i=0;i<100000;i++){
		  str+="technology";
		}	
	}

	public void concatStringByBuffer(){
		StringBuffer sb=new StringBuffer("iexceed");
		for(var i=0;i<100000;i++){
		   sb.append("technology");
		}
	}
	
	public void concatStringByBuilder(){
		StringBuilder sb=new StringBuilder("iexceed");
		for(var i=0;i<100000;i++){
		   sb.append("technology");
		}
	}
}
class demostringconcat{
	public static void main(String asd[]){
		stringconcat obj=new stringconcat();
		long st=System.currentTimeMillis();
		obj.concatString();
		System.out.println(System.currentTimeMillis()-st);
		long stb=System.currentTimeMillis();
		obj.concatStringByBuffer();
		System.out.println(System.currentTimeMillis()-stb);
		long stbu=System.currentTimeMillis();
		obj.concatStringByBuilder();
		System.out.println(System.currentTimeMillis()-stbu);
		
	}
}