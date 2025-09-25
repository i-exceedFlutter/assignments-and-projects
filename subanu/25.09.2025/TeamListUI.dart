import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_project/listViewBuilder.dart';
import 'package:my_project/myTeamList.dart';

void main()
{
  runApp(populatedData());
}
class populatedData extends StatelessWidget {
  const populatedData({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple[50],
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[400],
          title: Text("My Team",
          style: TextStyle(
            color: Colors.white
          ),),
          centerTitle: true,
          elevation: 20,
          shadowColor: Colors.deepPurple,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10)
            )
          ),
        ),
        body: ListView.builder(
          physics: BouncingScrollPhysics(),
            itemCount: teamList.length,
            itemBuilder: (BuildContext context, int index){
              return MyWidget(index);
        }),
      ),
    );
  }
}
Widget MyWidget(int index)
{
  return Container(
    //padding: EdgeInsets.all(10),
    margin: EdgeInsets.only(top:10,right: 5,left: 15),
    child: ListTile(
      leading: CircleAvatar(
        child: Text(teamList[index].logo,
        style: TextStyle(
          color: Colors.black
        ),),),
      title: Text(
        teamList[index].name,
          style: TextStyle(
            color: Colors.black
      ),),
      subtitle: Text(teamList[index].desig,
      style: TextStyle(color: Colors.black),),
      trailing: IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz)),
    ),
  );
}