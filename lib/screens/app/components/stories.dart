import 'package:chat_app/screens/app/components/story_item.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';

class ChatStory extends StatefulWidget {
  @override
  _ChatStoryState createState() => _ChatStoryState();
}

class ListBehaviour extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class _ChatStoryState extends State<ChatStory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NeuButton(
            onPressed: null,
            child: Icon(Icons.add,
                size: 30.0, color: NeuTheme.of(context).buttonColor),
            decoration: NeumorphicDecoration(
              shape: BoxShape.circle,
            ),
          ),
          Expanded(
            flex: 1,
            child: ScrollConfiguration(
              behavior: ListBehaviour(),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ChatStoryItem(),
                  ChatStoryItem(),
                  ChatStoryItem(),
                  ChatStoryItem(),
                  ChatStoryItem(),
                  ChatStoryItem(),
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
        ],
      ),
    );
  }
}
