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
          _profileAppBar(),
          _profileHeader(),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Text(
                '저를 소개합니다.\n인스타그램 클론코딩 중입니다.',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
          ),
          if (fromTab) _editProfileButton(),
        ],
      ),
    ));
  }

  Widget _profileAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // 하단 탭으로 이동한 경우, 뒤로가기 버튼 숨김
              if (!fromTab)
                InkWell(
                  onTap: null,
                  child: Icon(Icons.arrow_back),
                ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Username',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Icon(Icons.menu)
        ],
      ),
    );
  }

  Widget _profileHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          RoundedAvatar(
            size: 70,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "username",
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "0",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        TextSpan(
                          text: "\n게시물",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "0",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        TextSpan(
                          text: "\n팔로워",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "0",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        TextSpan(
                          text: "\n팔로잉",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _editProfileButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 4,
      ),
      child: SizedBox(
        width: double.infinity,
        height: 30,
        child: OutlinedButton(
          onPressed: () {},
          child: Text(
            '프로필 수정',
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
        ),
      ),
    );
  }
}
