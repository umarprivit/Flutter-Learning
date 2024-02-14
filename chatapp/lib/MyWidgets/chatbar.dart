// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class chatbar extends StatelessWidget {
  const chatbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        // In row the main axis is horizoztal and in column the main axis is vertical

        IconButton(
          alignment: Alignment.center,
          onPressed: () {},
          icon: Icon(Icons.add),
          color: Colors.white,
        ),

        //Text field for writing messages;

        Expanded(
          
            //to not overflow the field or for the constraints from the outer field
            child: TextField(
                keyboardType: TextInputType
                    .multiline, //this Property allows the text field to take multiline texts so that it cant overflow the container or text field
                maxLines:
                    null, //These are the properties which are used with the multi line keyboard type so it can determint that what is the max limit for a text field to expand up to
                minLines: 1,
                style: TextStyle(
                    color: const Color.fromARGB(255, 233, 233, 233),
                    fontWeight: FontWeight.w200),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Type a message',
                  hintStyle: TextStyle(color: Colors.white38),
                ))),

        //Send button
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.send),
          color: Colors.white,
        )
      ]),
    );
  }
}
