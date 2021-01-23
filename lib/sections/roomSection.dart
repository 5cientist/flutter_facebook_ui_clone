import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
