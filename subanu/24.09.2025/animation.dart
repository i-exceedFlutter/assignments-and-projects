import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(Animation());
}
class Animation extends StatefulWidget {
  const Animation({super.key});

  @override
  State<Animation> createState() => _AnimationState();
}

class _AnimationState extends State<Animation> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          width: double.infinity,
          height: 200,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          color:Colors.white,
          child: AnimatedAlign(
            alignment: selected? Alignment.topLeft:Alignment.bottomRight,
            duration: Duration(seconds: 1),
            curve: Curves.easeInOutBack,
            child: Image(
                height: 100,
                width: 100,
                alignment: Alignment.topCenter,
                image: NetworkImage('https://www.i-exceed.com/wp-content/uploads/2022/08/i-exceed-Hi-Res-copy-1.png')),
          ),
        ),
      ),
    );
  }
}
