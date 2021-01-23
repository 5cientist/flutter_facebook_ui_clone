import 'package:facebook_clone/widgets/avatar.dart';
import 'package:flutter/material.dart';

import '../assets.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(
            displayImage: dq_avator,
            displayStatus: true,
          ),
          Avatar(
            displayImage: cr7_avator,
            displayStatus: true,
          ),
          Avatar(
            displayImage: bilgates_avator,
            displayStatus: true,
          ),
          Avatar(
            displayImage: khabib_avator,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mammooty_avator,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mark_avator,
            displayStatus: true,
          ),
          Avatar(
            displayImage: umar_avator,
            displayStatus: true,
          ),
          Avatar(
            displayImage: roman_avator,
            displayStatus: true,
          ),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      child: OutlineButton.icon(
        shape: StadiumBorder(),
        onPressed: () {
          print("create new room");
        },
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text(
          "Create \nRoom",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        borderSide: BorderSide(color: Colors.blue[100], width: 2),
      ),
    );
  }
}
