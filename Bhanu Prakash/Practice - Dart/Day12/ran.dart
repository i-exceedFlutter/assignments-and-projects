void main() {
  List<int> l1 = [1, 2, 3, 4, 5];
  print(l1);
  
  l1.add(8);
  
  for(var i=0;i<l1.length;i++){
    print(l1[i]);
    
  }
   print(" ");
  for(var i in l1){
    print(i);
  }
  print(" ");
  l1.forEach((i)=>print(i));
  l1.shuffle();
  var rn= l1.where((i)=>(i%2==0));
  print(rn);
  
  
}
