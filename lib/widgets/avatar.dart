import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool displayStatus;
  final bool displayBorder;
  final double width;
  final double height;

  Avatar({
    @required this.displayImage,
    @required this.displayStatus,
    this.displayBorder = false,
    this.width = 50,
    this.height = 50,
  });
  @override
  Widget build(BuildContext context) {
    // Widget statusIndicator;
    // if (displayStatus == true) {
    //   statusIndicator = Positioned(
    //     bottom: 0,
    //     right: 1,
    //     child: Container(
    //       height: 15,
    //       width: 15,
    //       decoration: BoxDecoration(
    //         color: Colors.greenAccent,
    //         shape: BoxShape.circle,
    //         border: Border.all(
    //           color: Colors.white,
    //           width: 2,
    //         ),
    //       ),
    //     ),
    //   );
    // } else {
    //   statusIndicator = SizedBox();
    // }

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayBorder
                ? Border.all(
                    color: Colors.blueAccent,
                    width: 3,
                  )
                : Border(),
          ),
          padding: EdgeInsets.only(left: 4, right: 4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              displayImage,
              height: height,
              width: width,
            ),
          ),
        ),
        displayStatus == true
            ? Positioned(
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
              )
            : SizedBox(),
      ],
    );
  }
}
