import 'package:facebook_clone/sections/statusSection.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone/widgets/appBarButton.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            appBarButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print("go to search");
              },
            ),
            appBarButton(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print("messanger apperars !");
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            statusSection(),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
          ],
        ),
      ),
    );
  }
}
