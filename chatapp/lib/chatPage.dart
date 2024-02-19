// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:chatapp/MyWidgets/chatbar.dart';
import 'package:chatapp/MyWidgets/chatbubble.dart';
import 'package:flutter/material.dart';

class chatPage extends StatelessWidget {
   final username;
   const chatPage({super.key,required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hey $username :)",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.greenAccent,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);   // This is a navigator which is used to change the pages in a application and the pages in flutter we call them routes so this is one of the way to do the navigation along the pages;
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

                   alignment: (index%2==0)?Alignment.centerLeft:Alignment.centerRight
                  , message: "Hello");
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
