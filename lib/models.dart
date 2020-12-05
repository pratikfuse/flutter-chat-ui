import 'package:flutter/foundation.dart';
import "package:chat_app/common/theme_dark.dart";
import "package:chat_app/common/theme_light.dart";
import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';

NeuThemeData light = lightTheme;
NeuThemeData dark = darkTheme;

class AppThemde with ChangeNotifier {
  NeuThemeData current = light;
  bool isLight = true;

  toggleTheme() {
    if (isLight) {
      current = dark;
      isLight = false;
    } else {
      current = light;
      isLight = true;
    }
    notifyListeners();
  }
}
