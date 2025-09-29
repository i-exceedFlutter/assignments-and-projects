import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(position());
}
class position extends StatelessWidget {
  const position({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.black,
          height: 300,
          width: 300,
          child: Stack(
            fit: StackFit.expand,
            clipBehavior: Clip.none,
            alignment: Alignment(0, 0),
            children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.deepPurple,
            ),
            Positioned(
              bottom: -10,

              child: Container(
                height: 100,
                width: 100,
                color: Colors.deepPurpleAccent,
              ),
            ),
          ],),
        ),
      ),
    );
  }
}
