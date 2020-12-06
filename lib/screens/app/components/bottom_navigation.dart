import 'package:badges/badges.dart';
import 'package:chat_app/models/theme_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:provider/provider.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppTheme>(
      builder: (context, theme, child) => NeuCard(
        padding: EdgeInsets.all(10.0),
        decoration:
            NeumorphicDecoration(borderRadius: BorderRadius.circular(50.0)),
        curveType: CurveType.emboss,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Badge(
              child: GestureDetector(
                child: Icon(Icons.chat_bubble_outline,
                    color: NeuTheme.of(context).buttonColor),
              ),
              badgeContent: Text("1"),
              badgeColor: Colors.red,
              position: BadgePosition(top: 0, end: -10.0),
              shape: BadgeShape.circle,
            ),
            Icon(Icons.account_box_outlined,
                color: NeuTheme.of(context).buttonColor),
            Badge(
              badgeContent: Text("1"),
              badgeColor: Colors.red,
              toAnimate: true,
              position: BadgePosition(top: 0, end: -10.0),
              shape: BadgeShape.circle,
              child: Icon(Icons.notifications_outlined,
                  color: NeuTheme.of(context).buttonColor),
            ),
            Icon(Icons.settings_outlined,
                color: NeuTheme.of(context).buttonColor),
          ],
        ),
      ),
    );
  }
}
