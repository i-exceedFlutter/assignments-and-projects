// factory cons is used to return a private constructor/(one of the purpose)

class sample{
  sample._(String str){
    print("Default private constructor:$str");

  }  

  factory sample.getWild(String msg){
     
     return sample._(msg);

  }


}

void main(){
  sample s= sample.getWild("Hi ");
  s.toString();
}
