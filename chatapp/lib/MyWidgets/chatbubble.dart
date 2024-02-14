// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class  chatbubble extends StatelessWidget {
  final Alignment alignment ;
  final String message;
  const chatbubble({super.key,required this.alignment,required this.message});

  @override
  Widget build(BuildContext context) {
    return Align( //this will align a single container where ever we have to use it on every container expicilitly
                  alignment: alignment,
                  //Chat Bubble
                  child: Container(
                    // this is the container for the message which includes a column and the column have two children which contains a text and an image
                    padding: EdgeInsets.all(6),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(14),
                            topRight: Radius.circular(14),
                            bottomLeft: Radius.circular(14))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image(
                          image: NetworkImage(
                              //it is the child which contains the image from network it also can obtain image from file or devices.
                              'https://plus.unsplash.com/premium_photo-1680740103993-21639956f3f0?q=80&w=1888&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                          height: 300,
                        ),
                        Text(
                            "$message", //this is one of the child which is text and it have some properties
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w100,
                                fontSize: 18),textAlign: TextAlign.end),
                      ],
                    ),
                  ),
                );
  }
}