import 'package:chat_app/models/user.dart';
import 'package:flutter/foundation.dart';

class Message {
  final User user;
  final String message;
  final String time;
  final bool isOnline;

  Message({this.user, this.message, this.time, @required this.isOnline});
}

List<Message> messages = [
  Message(
      message: "Lorem ipsum dolor sit amet......",
      time: "Yesterday",
      isOnline: true,
      user: User(
          id: 1,
          name: "Jacob Scott",
          image:
              "https://image.shutterstock.com/image-photo/happy-cheerful-young-woman-wearing-260nw-613759379.jpg")),
  Message(
      message: "Lorem ipsum dolor sit amet......",
      time: "Yesterday",
      isOnline: false,
      user: User(
          id: 2,
          name: "Lara Lance",
          image:
              "https://images.unsplash.com/photo-1558507652-2d9626c4e67a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cG9ydHJhaXRzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")),
  Message(
      message: "Lorem ipsum dolor sit amet......",
      time: "Yesterday",
      isOnline: false,
      user: User(
          id: 3,
          name: "Alma Cansesco",
          image:
              "https://images.unsplash.com/photo-1533075377664-f5c0cbc5a91c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8cG9ydHJhaXRzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")),
  Message(
      message: "Lorem ipsum dolor sit amet......",
      time: "Yesterday",
      isOnline: true,
      user: User(
          id: 4,
          name: "John Doe",
          image:
              "https://images.unsplash.com/photo-1527082395-e939b847da0d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8cG9ydHJhaXRzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")),
  Message(
      message: "Lorem ipsum dolor sit amet......",
      time: "Yesterday",
      isOnline: true,
      user: User(
          id: 5,
          name: "John Doe",
          image:
              "https://images.unsplash.com/photo-1521117660421-ce701ed42966?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8cG9ydHJhaXRzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")),
];
