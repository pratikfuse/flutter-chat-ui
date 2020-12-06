import 'package:chat_app/models/message.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';

class ChatItem extends StatelessWidget {
  final Message message;
  ChatItem({@required this.message});
  @override
  Widget build(BuildContext context) {
    return NeuCard(
      padding: EdgeInsets.all(5.0),
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      curveType: CurveType.convex,
      decoration:
          NeumorphicDecoration(borderRadius: BorderRadius.circular(0.0)),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 59, vertical: 10.0),
                height: 70.0,
                width: 70.0,
                margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("${message.user.image}"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(message.user.name,
                        style: NeuTheme.of(context).textTheme.headline4),
                    Text(message.message,
                        style: NeuTheme.of(context).textTheme.subtitle1),
                  ],
                ),
                flex: 1,
              ),
              Text(message.time,
                  style: NeuTheme.of(context).textTheme.subtitle2)
            ],
          ),
          Positioned(
              left: 50.0,
              bottom: 0.0,
              child: Icon(Icons.circle,
                  color: Colors.green.withOpacity(message.isOnline ? 0.8 : 0)))
        ],
      ),
    );
  }
}
