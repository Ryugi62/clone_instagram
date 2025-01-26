import 'package:flutter/material.dart';

class MyProgressIndicater extends StatelessWidget {
  final double containerSize;
  final double progressSize;

  const MyProgressIndicater(
      {super.key, this.containerSize = 50, this.progressSize = 60});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: containerSize,
      height: containerSize,
      child: Center(
        child: SizedBox(
            width: progressSize,
            height: progressSize,
            child: Image.asset("assets/images/loading_image.gif")),
      ),
    );
  }
}
