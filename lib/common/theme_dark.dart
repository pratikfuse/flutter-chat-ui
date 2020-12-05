import 'package:chat_app/common/theme_light.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';

Color darkPrimaryColor = Color.fromARGB(255, 29, 29, 32);
Color darkBackgroundColor = Color.fromARGB(255, 29, 29, 32);

NeuThemeData darkTheme = NeuThemeData(
  backgroundColor: darkBackgroundColor,
  curveType: CurveType.concave,
  fontFamily: "LatoFont",
  primaryColor: Colors.black,
  brightness: Brightness.dark,
  buttonColor: darkPrimaryColor,
  textTheme: TextTheme(
    headline5: TextStyle(color: lightPrimaryColor, fontFamily: "Lato"),
    headline6: TextStyle(color: lightPrimaryColor),
    headline4: TextStyle(color: lightPrimaryColor),
    headline3: TextStyle(color: lightPrimaryColor),
    headline2: TextStyle(color: lightPrimaryColor),
    headline1: TextStyle(color: lightPrimaryColor),
    subtitle1: TextStyle(color: lightPrimaryColor),
    subtitle2: TextStyle(color: lightPrimaryColor),
  ),
);
