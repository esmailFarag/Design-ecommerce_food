import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  bool isActive;
  String title;

  Category({this.isActive, this.title});

  // widget for evey button in top
  Widget makeCategory() {
    return AspectRatio(
        aspectRatio: isActive ? 3 : 2.5 / 1,
        child: Container(
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: isActive ? Colors.yellow[700] : Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                    color: isActive ? Colors.white : Colors.grey[500],
                    fontSize: 18,
                    fontWeight: isActive ? FontWeight.bold : FontWeight.w100),
              ),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return makeCategory();
  }
}
