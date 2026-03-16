import 'package:flutter/material.dart';
import '../models/user.dart';
import '../widgets/profile_button.dart';

class ProfileView extends StatelessWidget {
  ProfileView({super.key});

  final User user = User(
    name: "Nguyen Van A",
    email: "nguyenvana@email.com",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                "https://i.pravatar.cc/300",
              ),
            ),

            const SizedBox(height: 20),

            Text(
              user.name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              user.email,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 20),

            ProfileButton(
              text: "Edit Profile",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}