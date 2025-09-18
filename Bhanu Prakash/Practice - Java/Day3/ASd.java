class sample {
    static int x = 100;

    sample() {
	staticmethod();
        x = 120;
        System.out.println("BHANu");
    }

    static public void staticmethod() {
	sample.nonstaticmethod();
        x = 120;
        System.out.println("BHANu");
    }

    public void nonstaticmethod() {
        x = 230;
    }
}

class ASd {
    public static void main(String[] asd) {
        sample ob = new sample();
	
    }
}
