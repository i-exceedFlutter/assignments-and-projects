class Crypto{
  String? Coin;
  String? CoinCode;
  Crypto({this.Coin,this.CoinCode});
  void Display(){
    print("Coin Name:$Coin");
    print("Coin Code:$CoinCode");
  }
 


}
void main(){
  Crypto c1= Crypto(Coin: "Bitcoin",CoinCode: "BTC");
  c1.Display();
}