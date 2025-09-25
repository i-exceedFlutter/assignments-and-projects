import 'package:flutter/material.dart';
void main()
{
  runApp(container());
}
class container extends StatelessWidget {
  const container({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
           body: Container(
          width: 50,
          height: 50,
          color: Colors.green,
          child: Container( //only yellow color container will appear in the size of the parent container
            color: Colors.yellow,
            width: 150,
            height: 150,
          ),
        )
       )
    );
  }
}
