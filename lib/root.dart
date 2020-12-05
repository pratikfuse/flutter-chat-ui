import 'package:chat_app/common/theme_dark.dart';
import 'package:chat_app/common/theme_light.dart';
import 'package:chat_app/models/theme_model.dart';
import 'package:chat_app/screens/app/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:neumorphic/neumorphic.dart' as neu;
import 'package:provider/provider.dart';

class Chatio extends StatelessWidget {
  Chatio({
    Key key,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppTheme>(
        create: (_) => AppTheme(),
        child: Consumer<AppTheme>(builder: (_, model, child) {
          return NeuApp(
              darkTheme: darkTheme,
              debugShowCheckedModeBanner: false,
              home: HomeScreen(),
              theme: lightTheme,
              color: Colors.white,
              themeMode:
                  model.isLight ? neu.ThemeMode.light : neu.ThemeMode.dark);
        }));
  }
}
