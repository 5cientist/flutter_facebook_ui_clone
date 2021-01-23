import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/widgets/circularButton.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(dq_avator),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: CircularButton(
              buttonIcon: Icons.add,
              iconColor: Colors.blue,
              buttonAction: () {
                print("create new story !");
              },
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              "Add to Story",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
