import 'package:flutter/material.dart';

class ChatStoryItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: 10.0,
        width: 50.0,
        margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: NetworkImage(
                "https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/321805_2200-732x549.jpg"),
            fit: BoxFit.cover,
          ),
          border: Border.all(
            color: Colors.amber,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(100.0),
        ),
      ),
    );
  }
}
