import 'package:cached_network_image/cached_network_image.dart';
import 'package:clone_instagram/widgets/my_progress_indicater.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final int index;

  const PostWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return CachedNetworkImage(
      imageUrl: "https://picsum.photos/id/$index/250/250",
      imageBuilder: (BuildContext context, ImageProvider imageProvider) {
        return AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
      placeholder: (context, url) {
        return MyProgressIndicater(
          containerSize: size.width,
        );
      },
    );
  }
}
