import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;

  Avatar({
    @required this.displayImage,
  });
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Image.asset(
        displayImage,
        height: 50,
        width: 50,
      ),
    );
  }
}
