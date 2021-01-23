import 'package:facebook_clone/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(),
        ],
      ),
    );
  }
}
