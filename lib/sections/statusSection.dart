import 'package:flutter/material.dart';
import 'package:facebook_clone/assets.dart';

class statusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(
          dq_avator,
          height: 50,
          width: 50,
        ),
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
