// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

// ignore: camel_case_types
class loginPage extends StatelessWidget {
 loginPage({super.key});

final TextEditingController userName = TextEditingController();
final TextEditingController password = TextEditingController();

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

            Container(//username text field
              child: TextField(
                controller: userName,
                decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Enter Your UserName"),
                textAlign: TextAlign.center,
              ),
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            ),
            Container(//password field
              child: TextField(
                controller:password ,
                obscureText: true,
                decoration: InputDecoration(border: OutlineInputBorder(),hintText:"Enter your Password"),
                textAlign: TextAlign.center,
              ),
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            ),

            ElevatedButton(
                onPressed: () {
                  print("pressed elevated button username=${userName.text} and password = ${password.text}");
                },
                child: Text(
                    "Login")) //This is elevated button means it follows the primary theme colour and its like a squary button that a UI have

            ,

            Container(
              child: TextButton(
                  //This is a Textbutton means this display a text with no outlnes or colour its just display a text and that is clickable
                  onPressed: () {
                    print("clicked on link");
                  },
                  child: Text("Syed Umer ")),
              margin: EdgeInsets.all(10),
            ),

            //This is a gesture detector widget which is used for detecting the gestures from smartphones it has many property but the gesture detector just detect it doesnot inform user or give any touching colour to the thing
            // For that we have inkwell to inform user by giving a touch animation to the user and syntax or the widget is mentioned below the GestureDetector;

            GestureDetector(
              child: Text("This is for learning a gestures"),
              onTap: () => print("tapped on the text"),
            )
            //InkWell(child: Text("This is for learning a gestures"),onTap: () => print("tapped on the text"),)
          ],
        ),
      ),
    );
  }
}