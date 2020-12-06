import 'package:flutter/material.dart';

class ChatStoryItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        height: 50.0,
        width: 50.0,
        margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: const DecorationImage(
            image: NetworkImage(
                "https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/321805_2200-732x549.jpg"),
            fit: BoxFit.cover,
          ),
          border: Border.all(
            color: Colors.orange,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
