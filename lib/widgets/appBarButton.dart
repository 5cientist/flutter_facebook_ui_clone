import 'dart:ffi';

import 'package:flutter/material.dart';

class appBarButton extends StatelessWidget {
  final IconData buttonIcon;
  final Void Function() buttonAction;

  appBarButton({@required this.buttonIcon, @required this.buttonAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(
          buttonIcon,
          color: Colors.black,
          size: 25,
        ),
        onPressed: buttonAction,
      ),
    );
  }
}
