import 'package:chat_app/models.dart';
import 'package:chat_app/models/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:provider/provider.dart';

class AppHeader extends StatefulWidget {
  @override
  _AppHeaderState createState() => _AppHeaderState();
}

class _AppHeaderState extends State<AppHeader>
    with SingleTickerProviderStateMixin {
  TextEditingController controller;
  static const Duration toggleDuration = Duration(milliseconds: 300);
  AnimationController animationController;
  Animation animation;
  FocusNode focusNode;
  bool isSearchExpanded = false;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        _openSearch();
        return;
      }
      _hideSearch();
    });
    controller = TextEditingController();
    animationController =
        AnimationController(vsync: this, duration: toggleDuration);
    animation = Tween(begin: 7, end: 1.25).animate(CurvedAnimation(
        parent: animationController,
        curve: Curves.bounceIn,
        reverseCurve: Curves.bounceOut));
  }

  void _openSearch() {
    setState(() {
      isSearchExpanded = true;
    });
    animationController.forward();
  }

  void _hideSearch() {
    setState(() {
      isSearchExpanded = false;
    });
    controller.clear();
    animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Consumer<AppTheme>(builder: (context, theme, child) {
      return Container(
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 50.0,
              margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://www.bridgestorecovery.com/wp-content/uploads/2017/10/Understanding-BPD-Emotional-Manipulation-Techniques-and-How-Treatment-Can-Help-1280x720.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(100.0),
              ),
            ),
            AnimatedBuilder(
              animation: animation,
              builder: (context, widget) => NeuCard(
                  // height: size.height / 15,
                  width: size.width / animation.value,
                  child: TextField(
                    controller: controller,
                    textAlign: TextAlign.start,
                    cursorColor:
                        NeuTheme.of(context).buttonColor.withOpacity(0.7),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      prefixIcon: Icon(Icons.search_outlined,
                          size: 30.0, color: NeuTheme.of(context).buttonColor),
                    ),
                    focusNode: focusNode,
                    textAlignVertical: TextAlignVertical.center,
                    style: NeuTheme.of(context).textTheme.subtitle1,
                  )),
            ),
          ],
        ),
        height: size.height / 15,
      );
    });
  }
}
