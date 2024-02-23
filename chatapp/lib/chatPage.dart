// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:chatapp/MyWidgets/chatbar.dart';
import 'package:chatapp/MyWidgets/chatbubble.dart';
import 'package:chatapp/models/chatMessageEntity.dart';
import 'package:flutter/material.dart';

class chatPage extends StatelessWidget {
  chatPage({super.key});

  List<ChatMessageEntity> messages = [
    ChatMessageEntity(
        id: "1",
        message: "FirstText",
        timestamp: DateTime.now().millisecondsSinceEpoch,
        author: Author(name: "Umer")),
    ChatMessageEntity(
        id: "2",
        message: "SecondText",
        timestamp: DateTime.now().millisecondsSinceEpoch,
        author: Author(name: "Someone"),
        imageUrl:
            "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
    ChatMessageEntity(
        id: "3",
        message: "ThirdText",
        timestamp: DateTime.now().millisecondsSinceEpoch,
        author: Author(name: "Umer"))
  ];

  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments as String ?? "Guest";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hey $username :)",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.greenAccent,
        actions: [
          // this is action which is use to add action in app bar like buttons and other functions ;
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(
                    // to commpletely backtrack we used replacement named method so that the user cant go back we use this type of method where we dont want the user to go back every time;
                    context,
                    '/'); // This is a navigator which is used to change the pages in a application and the pages in flutter we call them routes so this is one of the way to do the navigation along the pages;
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: messages.length,
            itemBuilder: (context, index) {
              return chatbubble(
                  alignment: (messages[index].author.name == "Umer")
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  entity: messages[index]);
            },
          )),

          //This is the way so we can add manually every time when we want to add a widget But if we want to make a widget n number of times we have anohter approach that is listview.builder
          // child: ListView(
          //   //this ts the prpoerty which contain all the widgets in itself and also includes a scolling
          //   children: [
          //     // from here all the containers are messages;
          //     chatbubble(alignment: Alignment.centerRight,message:"hey"),
          //     chatbubble(alignment: Alignment.centerLeft, message: "hello buddy")

          //   ],
          // ),

          //this is the bottom bar for which we can set messages;
          chatbar()
        ],
      ),
    );
  }
}
