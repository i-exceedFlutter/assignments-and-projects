void main() async {
  print("fetch started");
  await fetchUser();
  print("fetch ended!");
}

Future<String> fetchUser() async {
  await Future.delayed(Duration(seconds: 5),(){print("User Data Feteched!");});
  return "fetched user data";
}
