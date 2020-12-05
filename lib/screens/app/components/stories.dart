import 'package:chat_app/screens/app/components/story_item.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';

class ChatStory extends StatefulWidget {
  @override
  _ChatStoryState createState() => _ChatStoryState();
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class _ChatStoryState extends State<ChatStory> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.ideographic,
      children: [
        Column(
          children: [
            NeuButton(
              onPressed: null,
              child: Icon(Icons.add,
                  size: 40.0, color: Theme.of(context).buttonColor),
              decoration: NeumorphicDecoration(
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(
                child: Container(
              margin: EdgeInsets.only(top: 15.0),
              child: Center(
                  child: Text("My \nstory",
                      textAlign: TextAlign.center,
                      style: NeuTheme.of(context).textTheme.subtitle1)),
            ))
          ],
        ),
        Expanded(
          flex: 1,
          child: Container(
            height: 80.0,
            child: ScrollConfiguration(
              behavior: MyBehavior(),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ChatStoryItem(),
                  ChatStoryItem(),
                  ChatStoryItem(),
                  ChatStoryItem(),
                  ChatStoryItem(),
                  ChatStoryItem(),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
