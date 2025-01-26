import 'package:clone_instagram/widgets/rounded_avatar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final bool fromTab; // 하단 탭으로 이동했는지 여부

  const ProfileScreen({super.key, required this.fromTab});

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
                    // 하단 탭으로 이동한 경우, 뒤로가기 버튼 숨김
                    if (!fromTab)
                      InkWell(
                        onTap: () {
                          Navigator.pop(context); // 뒤로가기 동작
                        },
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
          ),
        ],
      ),
    ));
  }
}
