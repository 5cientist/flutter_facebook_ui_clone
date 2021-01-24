import 'package:flutter/material.dart';

class BlueTick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 15,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.check,
        color: Colors.white,
        size: 10,
      ),
    );
  }
}
