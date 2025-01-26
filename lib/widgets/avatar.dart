import 'package:cached_network_image/cached_network_image.dart';
import 'package:clone_instagram/constants/common_size.dart';
import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
        child: CachedNetworkImage(
      imageUrl: "https://picsum.photos/100",
      width: AVATAR_SIZE,
      height: AVATAR_SIZE,
    ));
  }
}
