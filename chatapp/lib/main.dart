// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:chatapp/chatPage.dart';
import 'package:chatapp/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(Theme.of(context).primaryColor);
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: false,
          
          primarySwatch: Colors
              .blue), // usematerial3 : false is done because if we use material 3 we cant chage teh whole theme for the app it is done for the compatablity or to apps look native
      title: "ChatApp",
      home: loginPage(),
      routes: {
        '/chatpage': (context) =>
            chatPage() //this is anohter way that we called it named routes means we named a route with a key value which treated as his name and can be used
      },
    );
  }
}
