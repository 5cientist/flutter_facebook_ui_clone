import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/sections/headerButtonSection.dart';
import 'package:facebook_clone/sections/roomSection.dart';
import 'package:facebook_clone/sections/statusSection.dart';
import 'package:facebook_clone/sections/storySection.dart';
import 'package:facebook_clone/widgets/headerButton.dart';
import 'package:facebook_clone/widgets/postCard.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone/widgets/circularButton.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print("go to search");
              },
            ),
            CircularButton(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print("messanger apperars !");
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSection(
              buttonOne: headerButton(
                buttonAction: () {
                  print("Go Live");
                },
                buttonColor: Colors.red,
                buttonIcon: Icons.video_call,
                buttonText: "Live",
              ),
              buttonTwo: headerButton(
                  buttonText: "photos",
                  buttonIcon: Icons.photo_library,
                  buttonAction: () {
                    print("Take Photo ");
                  },
                  buttonColor: Colors.green),
              buttonThree: headerButton(
                buttonText: "Room",
                buttonIcon: Icons.video_call,
                buttonAction: () {
                  print("Create Room !");
                },
                buttonColor: Colors.purple,
              ),
            ),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              avatar: dq_avator,
              name: "dulaqar",
              publishedAt: "5 hr",
              postTitle: "Happy Fighting !!",
              postImage: pinarayi_post,
              showBlueTick: true,
              likeCount: "10K",
              commentCount: "1K",
              shareCount: "1K",
            ),
            thickDivider,
          ],
        ),
      ),
    );
  }
}
