
import 'package:flutter/material.dart';

void main()
{
  runApp(Mytheme());
}
class Mytheme extends StatelessWidget {
  const Mytheme({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData( primaryColor: Colors.orange,scaffoldBackgroundColor: Colors.yellow),
        home: scaffold(),

    );
  }
}

class scaffold extends StatelessWidget {
  const scaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Builder(builder: (context)=> ElevatedButton(onPressed: (){
          Scaffold.of(context).openDrawer();
        }, child: Text("Open"))),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.yellow,Colors.green])),
                child: Image(image: NetworkImage("https://www.i-exceed.com/wp-content/uploads/2022/08/i-exceed-Hi-Res-copy-1.png")),
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                curve: Curves.easeInOut),
            SizedBox(height:15),
            ListTile(title: Text("ONE")),
            SizedBox(height: 15),
            ListTile(title: Text("TWO")),
          ],
        ),
      ),

      appBar: AppBar(actions:[IconButton(onPressed: (){print("Bye");}, icon: Icon(Icons.abc_outlined))],
        title: Text("APP BAR"), backgroundColor: Colors.green, foregroundColor: Colors.orangeAccent,centerTitle: true,),);
  }
}


