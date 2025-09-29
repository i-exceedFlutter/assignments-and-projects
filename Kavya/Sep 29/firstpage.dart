import 'package:flutter/material.dart';
import 'package:practiceflutter/ElevatedButtons.dart';

void main() {
  runApp(Mypage());
}

class Mypage extends StatelessWidget {
  const Mypage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loader(), // start with loader
    );
  }
}
// class Mypage extends StatefulWidget {
//   const Mypage({super.key});
//
//   @override
//   State<Mypage> createState() => _MypageState();
// }
//
// class _MypageState extends State<Mypage> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: loader(),
//     );
//   }
// }


class loader extends StatefulWidget {
  const loader({super.key});

  @override
  State<loader> createState() => _loaderState();
}

class _loaderState extends State<loader> {
  @override
  void initState() {
    super.initState();
    // Navigate after 3 seconds directly to elevatedButton()
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => elevatedButton()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 192, 203, 1),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 350),
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/Logoo.jpg"),
              radius: 60,
            ),
            SizedBox(height: 50),
            CircularProgressIndicator(color: Colors.pink[300],),
          ],
        ),
      ),
    );
  }
}
