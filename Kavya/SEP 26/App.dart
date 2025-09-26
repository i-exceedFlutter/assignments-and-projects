import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Transaction.dart';

void main() {
  runApp(MyAppView());
}

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Myscaff());
  }
}

class Myscaff extends StatelessWidget {
  const Myscaff({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color.fromRGBO(255, 220, 225, 1),
        shadowColor: Colors.pink,
        child: ListView(
          children: [
            ListTile(
              tileColor: Colors.pink[200],
              minTileHeight: 300,
              subtitle: Align(child: Text("abcd123@gmail.com"),alignment: Alignment.center),
              title: Align(
                alignment: Alignment.topCenter,
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/Photooo.jpg'),
                ),

              ),
            ),
            SizedBox(height: 10),
            ListTile(tileColor: Colors.white54),
            SizedBox(height: 10),
            ListTile(tileColor: Colors.white54),
            SizedBox(height: 10),
            ListTile(tileColor: Colors.white54),
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(255, 192, 203, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.pink[100]),
        actions: [
          CircleAvatar(
            child: Align(
              child: Icon(Icons.person, size: 35, color: Colors.pink[400]),
              alignment: Alignment.center,
            ),
          ),
          SizedBox(width: 20),
        ],
        backgroundColor: Colors.pink,
        toolbarHeight: 78,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Balance",
                        style: TextStyle(fontSize: 28, color: Colors.pink),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "₹2,100",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width: 160,
                        margin: EdgeInsets.only(left: 30, bottom: 30),
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Income",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "₹6,000",
                              style: TextStyle(
                                fontSize: 29,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 35),
                      Container(
                        height: 120,
                        width: 160,
                        margin: EdgeInsets.only(right: 20, bottom: 30),
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Expenses",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "₹3,900",
                              style: TextStyle(
                                fontSize: 29,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 400,
              child: ListView.separated(
                padding: EdgeInsets.only(top: 10),
                physics: BouncingScrollPhysics(),
                itemCount: TransactionsList.length,
                separatorBuilder: (BuildContext con, int i) {
                  return Divider(height: 1);
                },
                itemBuilder: (BuildContext context, int i) {
                  return Card(
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 2,
                      bottom: 2,
                    ),
                    child: ListTile(
                      subtitle: Text(
                        TransactionsList[i].action,
                        style: TextStyle(fontSize: 16, fontFamily: "Open Sans"),
                      ),
                      title: Text(
                        "${TransactionsList[i].person}",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Open Sans",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Text(
                        "${TransactionsList[i].amount}",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      leading: CircleAvatar(
                        child: Text(
                          "${TransactionsList[i].person[0]}",
                          style: TextStyle(fontSize: 20),
                        ),
                        radius: 25,
                        backgroundColor: Colors.pink[50],
                        foregroundColor: Colors.pink,
                      ),
                      textColor: Colors.pink,
                      minLeadingWidth: 45,
                      minTileHeight: 30,
                      minVerticalPadding: 18,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      tileColor: Color.fromRGBO(255, 250, 250, 1),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
