import 'package:flutter/material.dart';
void main() {
  runApp(listView());
}
class listView extends StatelessWidget {
  const listView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          leading: IconButton(onPressed: (){}, 
              icon: Icon(Icons.menu,
                color: Colors.white,)),
          title: Text("App Bar",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 25,
            ),
          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.favorite),color: Colors.white,),
            IconButton(onPressed: (){}, icon: Icon(Icons.account_circle),color: Colors.white,)
          ],

        ),

        body: ListView(
            padding: EdgeInsets.all(30),
            children: [
              ListTile(
                leading: CircleAvatar(child: Text("S"),),
                title: Text("Subanu",
                  style: TextStyle(
                    fontSize: 20,
                  ),),
                subtitle: Text("Software Engineer Trainee",
                  style: TextStyle(
                    fontWeight: FontWeight.w800
                  ) ,),
                trailing: Icon(Icons.search),
                contentPadding: EdgeInsets.only(top: 20,right: 10,left: 10,bottom: 10),
                dense: false,
                enabled: true,
                iconColor: Colors.deepPurpleAccent,
                textColor: Colors.deepPurple[900],
                tileColor: Colors.deepPurple[50],
                minLeadingWidth: 40,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                onTap: (){
                  print("Tapped!");
                },
              ),
              SizedBox(height: 20),
              ListTile(
                leading: CircleAvatar(child: Image(image: NetworkImage('https://www.i-exceed.com/wp-content/uploads/2022/08/i-exceed-Hi-Res-copy-1.webp')),),
                title: Text("Abhi",style: TextStyle(
                  fontSize: 20,
                  ),
                ),
                subtitle: Text("Software Engineer Trainee",
                  style: TextStyle(
                    fontWeight: FontWeight.w800
                ) ,),
                trailing: Icon(Icons.search),
                contentPadding: EdgeInsets.all(10),
                //isThreeLine: true,
                iconColor: Colors.deepPurpleAccent,
                textColor: Colors.deepPurple[900],
                tileColor: Colors.deepPurple[50],
                minLeadingWidth: 40,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
                onLongPress: () {
                  print("Long Pressed!");
                },
              ),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Leah(enabled: false)",style: TextStyle(
                  fontSize: 20,
                ),
                ),
                subtitle: Text("Software Engineer Trainee",
                  style: TextStyle(
                      fontWeight: FontWeight.w800
                  ) ,),
                trailing: Icon(Icons.search),
                enabled: false,
                iconColor: Colors.deepPurpleAccent,
                textColor: Colors.deepPurple[900],
                tileColor: Colors.deepPurple[50],
                contentPadding: EdgeInsets.all(10),
                minLeadingWidth: 40,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),

              )
            ],
          ),
        ),
    );
  }
}

