void main() {
  String? s1;
  String s2 = s1 ?? 'Hi';
  print(s2); // prints hi because the LHS is null so it chooses the RHS
  String s3 = s2 ?? 'Bye';
  print(s3); //prints hi because the LHS is not null
}
