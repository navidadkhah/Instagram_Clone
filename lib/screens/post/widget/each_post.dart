import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram_flutter/screens/post/widget/main_post.dart';
import 'package:instagram_flutter/screens/post/widget/post_date.dart';
import 'package:instagram_flutter/screens/post/widget/post_header.dart';
import 'package:instagram_flutter/screens/post/widget/post_icons.dart';
import 'package:instagram_flutter/screens/post/widget/post_status.dart';

class EachPost extends StatelessWidget {
  const EachPost({
    Key? key,
    this.kColor,
    required this.isFollow,
  }) : super(key: key);

  final Color? kColor;
  final bool isFollow;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        isFollow
            ? PostHeader(
                isFollow: isFollow,
              )
            : PostHeader(
                isFollow: isFollow,
              ),
        MainPost(
          color: kColor,
        ),
        const PostIcons(),
        const PostStatus(),
        const PostDate(),
      ],
    );
  }
}
