import 'package:facebook_clone/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone/assets.dart';

class StatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(
        displayImage: dq_avator,
        displayStatus: false,
      ),
      title: TextField(
        decoration: InputDecoration(
          hintText: "whats on your mind",
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
