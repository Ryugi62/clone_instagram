import 'package:clone_instagram/widgets/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
          leading:
              IconButton(onPressed: null, icon: Icon(CupertinoIcons.camera)),
          middle: Text(
            "Instagram",
            style: TextStyle(
              fontFamily: "VeganStyle",
            ),
          )),
      body: ListView.builder(
        itemBuilder: _feedListBuilder,
        itemCount: 30,
      ),
    );
  }

  Widget _feedListBuilder(BuildContext context, int index) {
    return PostWidget(index: index);
  }
}
