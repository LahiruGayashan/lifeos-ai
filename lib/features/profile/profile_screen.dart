import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF02152D),

      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.person,
                size: 50,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Gayashan",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "LifeOS AI Founder",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 30),

            Card(
              color: Colors.white10,
              child: ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                title: const Text(
                  "Settings",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
            ),

            Card(
              color: Colors.white10,
              child: ListTile(
                leading: const Icon(
                  Icons.logout,
                  color: Colors.red,
                ),
                title: const Text(
                  "Logout",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}