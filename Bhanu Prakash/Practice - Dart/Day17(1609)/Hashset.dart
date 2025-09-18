//Hash Set - Unordered
// LinkedHash Set - insetion Order
// SplayTreeSet - Sorted Order

import 'dart:collection';

void main(){
  Set<int> data={1,2,3,4};
  for(var i in data){
    print(i);
  }
  print('Set:$data');
  HashSet<int> data2=HashSet();
  data2.addAll({3,2,5,1,8,10});
   print("HashSet:$data2");

  LinkedHashSet <int> data3= LinkedHashSet();
  data3.addAll({3,2,5,1,8,10});
  print("LinkedHashSet:$data3");

  SplayTreeSet<int> data4= SplayTreeSet();
  data4.addAll({3,2,5,1,8,10});
  print("SplayTreeSet:$data4");


  
  
}