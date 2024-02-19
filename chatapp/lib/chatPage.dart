// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:chatapp/MyWidgets/chatbar.dart';
import 'package:chatapp/MyWidgets/chatbubble.dart';
import 'package:flutter/material.dart';

class chatPage extends StatelessWidget {
  const chatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments as String;
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
                Navigator.pushReplacementNamed(// to commpletely backtrack we used replacement named method so that the user cant go back we use this type of method where we dont want the user to go back every time;
                    context,'/'); // This is a navigator which is used to change the pages in a application and the pages in flutter we call them routes so this is one of the way to do the navigation along the pages;
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return chatbubble(
                  alignment: (index % 2 == 0)
                      ? Alignment.centerLeft
                      : Alignment.centerRight,
                  message: "Hello");
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
