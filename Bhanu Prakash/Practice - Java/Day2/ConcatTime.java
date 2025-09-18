
class StringConcat {

    public void concatString() {
        String str = "iexceed";
        for (var i = 0; i < 100000; i++) {
            str += "technology"; 
        }
    }

    public void concatStringBuffer() {
        StringBuffer sb = new StringBuffer("iexceed");
        for (var i = 0; i < 100000; i++) {
            sb.append("technology"); 
        }
    }

    public void concatStringBuilder() {
        StringBuilder sb = new StringBuilder("iexceed");
        for (var i = 0; i < 100000; i++) {
            sb.append("technology"); 
        }
    }
}

public class ConcatTime {
    public static void main(String[] args) {
        StringConcat obj = new StringConcat();

        long st = System.currentTimeMillis();
        obj.concatString();
        System.out.println("String: " + (System.currentTimeMillis() - st));

        long stb1 = System.currentTimeMillis();
        obj.concatStringBuffer();
        System.out.println("StringBuffer: " + (System.currentTimeMillis() - stb1) );

        long stb2 = System.currentTimeMillis();
        obj.concatStringBuilder();
        System.out.println("StringBuilder: " + (System.currentTimeMillis() - stb2) );
    }
}
