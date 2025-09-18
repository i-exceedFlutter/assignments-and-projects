void main() {
  var myData = ("Sathishsivam", "L&D", "i-exceed", yoe: 25);
  print(myData.runtimeType);
  // Accessing the record
  print('Employee name is ${myData.$1}');
  print(myData.$3);
  print(myData.yoe);
  var (ug, pg, phd, :cgpa) = getQualification();
  print(ug);
  print(cgpa);
  var args = getQualification();
  print(args.cgpa);
  /*var args = getQualification();
  print(args.$4);*/
}

(String, String, String, {double cgpa}) getQualification() {
  return ("BE", "ME", "Ph.D", cgpa: 8.6);
}
