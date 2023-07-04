import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_flutter/screens/explor/widgets/explore_search.dart';
import 'package:instagram_flutter/screens/explor/widgets/posts_in_explore.dart';

class ExplorScreen extends StatelessWidget {
  const ExplorScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                ),
                child: Row(
                  children: const [
                    ExploreSearch(),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.location_on,
                      ),
                    )
                  ],
                ),
              ),
              const PostsInExplore(),
            ],
          ),
        ),
      ),
    );
  }
}
