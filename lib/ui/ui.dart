import 'package:flutter/material.dart';

class CustomProfilePage extends StatelessWidget {
  const CustomProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // First Child: Empty SizedBox
          const SizedBox(
            height: 400, // Height = Background Image + Profile Image
          ),

          // Second Child: Background Image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              "asset/IMG_20211004_232623.jpg", // Replace with your background image path
              height: 300, // Height of the background image
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          // Third Child: Profile Image
          Positioned(
            top: 200, // Position below the background image
            left: MediaQuery.of(context).size.width / 2 -
                50, // Center horizontally
            child: const CircleAvatar(
              radius: 50, // Profile image radius
              backgroundImage: AssetImage(
                  "asset/IMG_20211004_232623.jpg"), // Profile image path
            ),
          ),
        ],
      ),
    );
  }
}
