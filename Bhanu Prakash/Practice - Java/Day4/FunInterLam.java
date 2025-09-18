
interface sample{
    public void show();
}
class FunInterLam {
    public static void main(String[] args) {
        new sample(){
            @Override
            public void show(){
                System.out.println("Overrided in Main Class");
            }
        }.show();
    }
}