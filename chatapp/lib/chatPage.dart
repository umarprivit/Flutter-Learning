// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:convert';

import 'package:chatapp/MyWidgets/chatbar.dart';
import 'package:chatapp/MyWidgets/chatbubble.dart';
import 'package:chatapp/models/chatMessageEntity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class chatPage extends StatefulWidget {
  chatPage({super.key});

  @override
  State<chatPage> createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
  @override
  void initState() {
    LoadMessages();
    super.initState();
  }

  List<ChatMessageEntity> messages = [];

  LoadMessages() async {
    final response = await rootBundle.loadString(
        "assets/mock_messages.json"); // This is used to get Strings from the assets file
    final List<dynamic> decodedList = jsonDecode(response)
        as List; // this is used to decode the json format to a list for the we used as keyword and choose the list to be dynamic so that it can me list of any type
    List<ChatMessageEntity> message = decodedList.map((listItems) {
      //There is used a method called .map which means from the decoded list it will find the map and iterate them
      return ChatMessageEntity.fromJson(
          listItems); //This is where we call the factory constructor
    }).toList();
    setState(() {
     messages=message;  // We do it here because we want to set this state in the initialization process so we put the state and this is the final state 
   });
  }


  

  @override
  Widget build(BuildContext context) {
    final username =
        ModalRoute.of(context)!.settings.arguments as String ?? "Guest";
   
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
                  alignment: (messages[index].author.name == "poojab26")
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
