void main() {
  var myData = ("Sathishsivam", "L&D", "i-exceed", yoe: 25);
  print(myData.runtimeType);
  // Accessing the record
  print('Employee name is ${myData.$1}');
  print(myData.$3);
  print(myData.yoe);
  var (ug, pg, dr, :cgpa) = getQualification(); 

  print("UG: $ug, PG: $pg, Dr: $dr, CGPA: $cgpa");
}

(String, String, String, {double cgpa}) getQualification() {
  return ("BE", "ME", "Ph.D", cgpa: 8.6);
}