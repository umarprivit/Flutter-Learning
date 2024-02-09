// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

// ignore: camel_case_types
class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment
              .center, //To assign out container there is a property in column which moves its children on the main axis which is vertically.

          crossAxisAlignment: CrossAxisAlignment
              .center, //this is another property of column field like the main axis alignment but it works on the horizontal axis of the parent so there it will align the children in its column.
          children: [
            //this is the start of icon container;
            Container(
              height: 150, //height of the container

              width: 150, //width of the container

              padding: EdgeInsets.all(30), //padding of the container
              // margin: EdgeInsets.all(30),  // margin of the container
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                    28), // this is the property of box decoration which works to smoothly circles the corners of the container
                image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')),
              ),
            )
            // here ends the icon container.

            //here starts the text container
            ,
            Container(
              // margin: EdgeInsets.fromLTRB(0, 60, 0, 0),
              child: Text(
                "Let\'s Sign You In, \n You have been missed",
                textAlign: TextAlign
                    .center, //this is the property of text widget that it can allign text
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,

                  // letterSpacing: 2,
                  // backgroundColor: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
