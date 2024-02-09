import 'package:chatapp/chatPage.dart';
import 'package:chatapp/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.red),
        title: "Chat App",
        home: chatPage());
  }
}
