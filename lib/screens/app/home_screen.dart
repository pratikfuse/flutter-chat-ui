import 'package:chat_app/common/components/app_bar.dart';
import 'package:chat_app/models/message.dart';
import 'package:chat_app/models/theme_model.dart';
import 'package:chat_app/screens/app/components/bottom_navigation.dart';
import 'package:chat_app/screens/app/components/chat_item.dart';
import 'package:chat_app/screens/app/components/stories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget buildHomeScreen() {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height - 10,
      padding: EdgeInsets.symmetric(vertical: 50.0),
      child: Stack(
        fit: StackFit.loose,
        overflow: Overflow.visible,
        children: [
          Positioned(child: AppHeader(), left: 5.0, right: 5.0),
          Positioned(
            top: 80.0,
            left: 5.0,
            right: 5.0,
            child: ChatStory(),
          ),
          Positioned(
            top: 180.0,
            bottom: -10.0,
            left: 0.0,
            right: 0.0,
            child: ScrollConfiguration(
              behavior: ListBehaviour(),
              child: ListView(
                children: [
                  ChatItem(message: messages[0]),
                  ChatItem(message: messages[1]),
                  ChatItem(message: messages[2]),
                  ChatItem(message: messages[3]),
                  ChatItem(message: messages[4]),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: -40, child: BottomNavigation(), right: 40, left: 40)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AppTheme>(builder: (_, theme, child) {
      return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: theme.toggleTheme,
            backgroundColor: theme.current.primaryColor,
            child: Icon(theme.isLight ? Icons.nightlight_round : Icons.wb_sunny,
                color: theme.current.buttonColor),
          ),
          backgroundColor: theme.current.backgroundColor,
          body: buildHomeScreen());
    });
  }
}
