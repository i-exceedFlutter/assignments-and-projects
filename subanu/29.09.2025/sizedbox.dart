import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(sizedbox());
}
class sizedbox extends StatelessWidget {
  const sizedbox({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:
          ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 100,
                maxWidth: 200,
                minHeight: 50,
                maxHeight: 100,
              ),
            child: SizedBox.shrink(
              child: Center(child: ElevatedButton(onPressed: (){}, child: Text("Submit"))),
            ),
          )
        // Center(
        //   child: SizedBox.fromSize(
        //       size: Size(200, 100),
        //       child: ElevatedButton(onPressed: (){}, child: Text("Submit"))
        //   ),
        // ),
      ),
    );
  }
}
