class Cal{
  int add(int a,int b) => a+b;

  void printSum(int x,int y ){
    int res=this.add(x,y);
    print("Result is ${res}");
  }


}
void main(){
  Cal c=Cal();
  c.printSum(2, 3);
}