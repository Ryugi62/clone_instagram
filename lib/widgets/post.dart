import 'package:cached_network_image/cached_network_image.dart';
import 'package:clone_instagram/constants/common_size.dart';
import 'package:clone_instagram/widgets/rounded_avatar.dart';
import 'package:clone_instagram/widgets/my_progress_indicater.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final int index;

  const PostWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // size를 바로 가져옴

    return Column(
      children: <Widget>[
        _postHeader(),
        _postImage(size), // size를 전달
        _postActions()
      ],
    );
  }

  Widget _postHeader() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(COMMON_XXS_SIZE),
          child: RoundedAvatar(),
        ),
        Expanded(
          child: Text("userName"),
        ),
        IconButton(
          onPressed: null,
          icon: Icon(
            Icons.more_horiz,
            color: Colors.black87,
          ),
        )
      ],
    );
  }

  CachedNetworkImage _postImage(Size size) {
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

  Row _postActions() {
    return Row(
      children: <Widget>[
        _likeButtonRow(),
        _commentButtonRow(),
        IconButton(
          onPressed: null,
          icon: Icon(
            Icons.send,
            color: Colors.black87,
          ),
        ),
        Spacer(),
        IconButton(
          onPressed: null,
          icon: Icon(
            Icons.bookmark_border,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }

  Row _likeButtonRow() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: COMMON_XXS_SIZE,
        ),
        InkWell(
          onTap: null,
          child: Icon(
            Icons.favorite_border,
          ),
        ),
        SizedBox(
          width: COMMON_XXS_SIZE / 2,
        ),
        InkWell(
          onTap: null,
          child: Text(
            "2,000",
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Row _commentButtonRow() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: COMMON_XXS_SIZE,
        ),
        InkWell(
          onTap: null,
          child: Icon(
            Icons.mode_comment_outlined,
          ),
        ),
        SizedBox(
          width: COMMON_XXS_SIZE / 2,
        ),
        InkWell(
          onTap: null,
          child: Text(
            "2,000",
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
