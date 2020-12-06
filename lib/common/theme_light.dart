import 'package:chat_app/common/theme_dark.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';

Color lightPrimaryColor = Color.fromARGB(255, 222, 234, 246);
Color lightBackgroundColor = Color.fromARGB(255, 222, 234, 246);

NeuThemeData lightTheme = NeuThemeData(
    backgroundColor: lightBackgroundColor,
    curveType: CurveType.concave,
    primaryColor: lightPrimaryColor,
    fontFamily: 'LatoFont',
    accentColor: Colors.red,
    buttonColor: darkPrimaryColor,
    buttonTheme: ButtonThemeData(
        buttonColor: Colors.grey, textTheme: ButtonTextTheme.accent),
    textTheme: TextTheme(
      headline5: TextStyle(color: darkPrimaryColor),
      headline6: TextStyle(color: darkPrimaryColor),
      headline4: TextStyle(color: darkPrimaryColor),
      headline3: TextStyle(color: darkPrimaryColor),
      headline2: TextStyle(color: darkPrimaryColor),
      headline1: TextStyle(color: darkPrimaryColor),
      subtitle1: TextStyle(color: darkPrimaryColor),
      subtitle2: TextStyle(color: darkPrimaryColor),
    ),
    brightness: Brightness.light);
