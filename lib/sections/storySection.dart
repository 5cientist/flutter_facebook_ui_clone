import 'package:facebook_clone/assets.dart';
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
          StoryCard(
            labelText: "add to story",
            avatar: dq_avator,
            story: dq_avator,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Cristiano Ronaldo",
            avatar: cr7_avator,
            story: cr7post1,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Cristiano Ronaldo",
            avatar: cr7_avator,
            story: cr7post2,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "jhon wick",
            avatar: bilgates_avator,
            story: khabib_post,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "jhon cena",
            avatar: roman_avator,
            story: pinarayi_post,
          ),
        ],
      ),
    );
  }
}
