import 'package:chat_app/common/components/app_bar.dart';
import 'package:chat_app/models.dart';
import 'package:chat_app/models/theme_model.dart';
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
    return Padding(
      padding:
          EdgeInsets.only(top: 80.0, bottom: 10.0, left: 20.0, right: 20.0),
      child: Column(
        children: [
          AppHeader(),
          SizedBox(
            height: 50.0,
          ),
          ChatStory(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Consumer<AppTheme>(builder: (_, theme, child) {
      return Scaffold(
          backgroundColor: theme.current.backgroundColor,
          body: buildHomeScreen());
    });
  }
}
