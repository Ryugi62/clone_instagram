import 'package:clone_instagram/widgets/rounded_avatar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: null,
                      child: Icon(Icons.arrow_back),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Username',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Icon(Icons.menu)
              ],
            ),
          )
        ],
      ),
    ));
  }
}
