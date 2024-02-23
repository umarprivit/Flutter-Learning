// ignore_for_file: prefer_const_constructors

import 'package:chatapp/models/chatMessageEntity.dart';
import 'package:flutter/material.dart';


class  chatbubble extends StatelessWidget {
  final Alignment alignment ;
  final ChatMessageEntity entity;
  const chatbubble({super.key,required this.alignment,required this.entity});

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
                        if(entity.imageUrl!=null)
                        Image(
                          image: NetworkImage(
                              //it is the child which contains the image from network it also can obtain image from file or devices.
                              '${entity.imageUrl}'),
                          height: 300,
                        ),
                        Text(
                            entity.message, //this is one of the child which is text and it have some properties
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