import 'package:flutter/material.dart';
import 'package:myapp/splash_screen.dart';
import 'products.dart';
import 'loginpage.dart';
import 'profilepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Kart',
      theme: ThemeData(
        primaryColor: Colors.orangeAccent,
        brightness: Brightness.light,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          bodyMedium: TextStyle(fontSize: 16),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.tealAccent,
          foregroundColor: Colors.white,
          elevation: 4,
          centerTitle: true,
        ),
      ),
      home: SplashScreen(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to E-kart"),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        elevation: 20,
        shadowColor: Colors.black,
        leading: isLoggedIn
            ? Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        )
            : null,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Search button clicked")),
              );
            },
          ),
          isLoggedIn
              ? IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("No new notifications"),
                ),
              );
            },
          )
              : IconButton(
            icon: const Icon(Icons.login_rounded),
            onPressed: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
              if (result == true) {
                setState(() {
                  isLoggedIn = true;
                });
              }
            },
          ),
        ],
      ),

      drawer: isLoggedIn? Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Syam Karthikeya"),
              accountEmail: Text("syam@i-exceed.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 40, color: Colors.black),
              ),
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              subtitle: const Text("Go to Home Screen"),
              trailing: const Icon(Icons.arrow_forward_ios),
              isThreeLine: true,
              iconColor: Colors.indigo,
              textColor: Colors.indigo.shade800,
              tileColor: Colors.indigo.shade50,
              enabled: true,
              selected: true,
              selectedTileColor: Colors.indigo.shade50,
              hoverColor: Colors.orangeAccent,
              //focusColor: Colors.indigo.shade200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              subtitle: const Text("Check your profile"),
              trailing: const Icon(Icons.edit),
              isThreeLine: true,
              iconColor: Colors.green,
              textColor: Colors.green.shade900,
              tileColor: Colors.green.shade50,
              enabled: true,
              hoverColor: Colors.orangeAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              subtitle: const Text("Manage app settings"),
              trailing: const Icon(Icons.tune),
              isThreeLine: true,
              enabled: true,
              iconColor: Colors.cyan,
              textColor: Colors.cyan.shade900,
              tileColor: Colors.cyan.shade50,
              hoverColor: Colors.orangeAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              onTap: () {
                debugPrint("Settings tapped");
              },
            ),

            Divider(height: 1),

            ListTile(
                leading: const Icon(Icons.logout),
                title: const Text("Logout"),
                subtitle: const Text("Sign out from the app"),
                trailing: const Icon(Icons.exit_to_app),
                isThreeLine: true,
                enabled:true,
                iconColor: Colors.red,
                textColor: Colors.red.shade900,
                tileColor: Colors.red.shade50,
                hoverColor: Colors.orangeAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                onTap: () {
                  setState(() {
                    isLoggedIn = false;
                  });
                  Navigator.pop(context);
                }
            ),
          ],
        ),
      )
          :
      null,

      body: isLoggedIn
          ? ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        physics: const BouncingScrollPhysics(),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return Container(
            margin:
            const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 6,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    product["image"].toString(),
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 12),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product["name"].toString(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        product["price"].toString(),
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.green,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      Row(
                        children: List.generate(5, (starIndex) {
                          return Icon(
                            starIndex < (product["rating"] as int)
                                ? Icons.star
                                : Icons.star_border,
                            size: 15,
                            color: Colors.amber,
                          );
                        }),
                      ),

                      Align(
                        alignment: Alignment.centerLeft,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "Added ${product["name"]} to cart ",
                                ),
                              ),
                            );
                          },
                          icon: const Icon(Icons.shopping_cart),
                          label: const Text("Add to Cart"),
                          style: ButtonStyle(
                            backgroundColor: WidgetStateColor.resolveWith(
                                    (states) {
                                  if (states
                                      .contains(WidgetState.hovered)) {
                                    return Colors.redAccent;
                                  } else if (states
                                      .contains(WidgetState.pressed)) {
                                    return Colors.greenAccent;
                                  }
                                  return Colors.orangeAccent;
                                }),
                            shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      )
          : const Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            "Welcome to E-Kart 🛍️\n\nLogin to explore amazing products!",
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
      ),

      floatingActionButton: isLoggedIn
          ? FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("In development")),
          );
        },
        child: const Icon(Icons.add),
      )
          : null,
    );
  }
}
