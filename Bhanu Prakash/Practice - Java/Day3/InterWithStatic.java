interface one {
    static public void getMe() {
        System.out.println("static method from interface");
    }
}

class sample implements one {
    sample() {
        System.out.println("Cons");
    }
}

class InterWithStatic {
    public static void main(String[] args) {
        sample obj = new sample();  
        one.getMe();               
    }
}
