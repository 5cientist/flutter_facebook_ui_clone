import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  Widget headerButton({
    @required String buttonText,
    @required IconData buttonIcon,
    @required void Function() buttonAction,
    @required Color buttonColor,
  }) {
    return TextButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonColor,
      ),
      label: Text(buttonText),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget verticalDivider = VerticalDivider(
      thickness: 1,
      color: Colors.grey[300],
    );

    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(
              buttonText: "live",
              buttonIcon: Icons.video_call,
              buttonAction: () {
                print("Go to Live");
              },
              buttonColor: Colors.red),
          verticalDivider,
          headerButton(
              buttonText: "Photos",
              buttonIcon: Icons.photo_library,
              buttonAction: () {
                print("Take photo");
              },
              buttonColor: Colors.green),
          verticalDivider,
          headerButton(
              buttonText: "Room",
              buttonIcon: Icons.video_call,
              buttonAction: () {
                print("Create chat room");
              },
              buttonColor: Colors.purple),
        ],
      ),
    );
  }
}
