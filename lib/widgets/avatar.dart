import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool displayStatus;

  Avatar({
    @required this.displayImage,
    @required this.displayStatus,
  });
  @override
  Widget build(BuildContext context) {
    Widget statusIndicator;
    if (displayStatus == true) {
      statusIndicator = Positioned(
        bottom: 0,
        right: 1,
        child: Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
          ),
        ),
      );
    } else {
      statusIndicator = SizedBox();
    }
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 4, right: 4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              displayImage,
              height: 50,
              width: 50,
            ),
          ),
        ),
        statusIndicator,
      ],
    );
  }
}
