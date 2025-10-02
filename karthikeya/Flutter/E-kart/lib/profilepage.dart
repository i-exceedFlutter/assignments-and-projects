import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _nameController = TextEditingController(text: "Syam Karthikeya");
  final _emailController = TextEditingController(text: "syam@i-exceed.com");
  final _phoneController = TextEditingController(text: "+91 9876543210");

  bool isEditing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
        backgroundColor: Colors.tealAccent,
      ),
      body: Stack(
        children: [
          // background color block
          Container(
            height: 800,
            color: Colors.tealAccent,
          ),

          // profile content
          Positioned(
            top: 100,
            left: 20,
            right: 20,
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: _nameController,
                      enabled: isEditing,
                      decoration: const InputDecoration(
                        labelText: "Name",
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextField(
                      controller: _emailController,
                      enabled: isEditing,
                      decoration: const InputDecoration(
                        labelText: "Email",
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextField(
                      controller: _phoneController,
                      enabled: isEditing,
                      decoration: const InputDecoration(
                        labelText: "Phone",
                        prefixIcon: Icon(Icons.phone),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton.icon(
                      icon: Icon(isEditing ? Icons.save : Icons.edit),
                      label: Text(isEditing ? "Save" : "Edit"),
                      onPressed: () {
                        setState(() {
                          isEditing = !isEditing;
                        });
                        if (!isEditing) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Profile saved ✅")),
                          );
                        }
                      },
                    )
                  ],
                ),
              ),
            ),
          ),

          // profile picture
          Positioned(
            top: 40,
            left: MediaQuery.of(context).size.width / 2 - 50,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: const Icon(Icons.person, size: 60, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
