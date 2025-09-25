import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(myListbuilder());
}
class myListbuilder extends StatelessWidget {
  const myListbuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.builder(  //Does Lazy Loading ie, Loads only the on-demand items.
          //eg: we can see only 4 containers right now(on-demand items), only 4 times the itemBuilder will be called,
          //then, when we scroll, the next 4 (on-demand items) will be displayed, Then the itemBuilder will be called again for 4 times..and so on
            physics: BouncingScrollPhysics(),
            itemCount:20, //itemCount represents number of times we need the itemBuilder function to be called back.
            itemBuilder: (BuildContext context, int i){
            print(i);
            return Container(height: 200,width: 200,color: Colors.green,margin: EdgeInsets.all(10), child: Center(child: Text("Person $i")),);
        })
      ),
    );
  }
}
