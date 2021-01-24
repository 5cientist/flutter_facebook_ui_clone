import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/widgets/avatar.dart';
import 'package:facebook_clone/widgets/circularButton.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String avatar;
  final bool createStoryStatus;
  final bool displayBorder;

  StoryCard({
    @required this.labelText,
    @required this.story,
    @required this.avatar,
    this.createStoryStatus = false,
    this.displayBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(story),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: createStoryStatus
                ? CircularButton(
                    buttonIcon: Icons.add,
                    iconColor: Colors.blue,
                    buttonAction: () {
                      print("create new story !");
                    },
                  )
                : Avatar(
                    displayImage: avatar,
                    displayStatus: false,
                    displayBorder: displayBorder,
                  ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              labelText != Null ? labelText : "N/A",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
