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
  static const Duration toggleDuration = Duration(milliseconds: 500);
  AnimationController animationController;
  Animation animation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: toggleDuration);
    animation = IntTween(begin: -1, end: 0).animate(animationController);
  }

  void _toggleSearch() {
    setState(() {
      isSearchExpanded = !isSearchExpanded;
      if (isSearchExpanded) {
        animationController.forward();
        return;
      }
      animationController.reverse();
    });
  }

  bool isSearchExpanded = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print(size.width);
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
            Expanded(
                child: Text("Messages",
                    style: NeuTheme.of(context).textTheme.headline5),
                flex: 1),
            Expanded(
                flex: 0,
                child: SizedBox(
                  width: size.width / 7,
                  child: NeuButton(
                      onPressed: theme.toggleTheme,
                      child: Icon(Icons.search,
                          color: theme.isLight ? Colors.grey : Colors.white),
                      decoration: NeumorphicDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: theme.current.buttonColor)),
                ))
          ],
        ),
        height: size.height / 15,
      );
    });
  }
}
