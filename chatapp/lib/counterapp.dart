// ignore_for_file: prefer_const_constructors, no_logic_in_create_state

import 'package:flutter/material.dart';

class counterapp extends StatefulWidget {
  //This is a stateful widget which is a dynamic widget means it changes its state on the interaction or any intruption from the user and it works on two classes

//One is this widget class and this is immutable means this does not return or contain any build method means it only create a state and this class needs the state class to build all components

  const counterapp({super.key});

  @override
  State<counterapp> createState() =>
      _counterappState(); //This is the creation of the state class so that it can create a state Another way to do that is
      
  // State<counterapp> createState(){
  // State<counterapp> ctrappst = _counterappState();
  //   return ctrappst;
  // }
}

class _counterappState extends State<counterapp> {  //This is the state class which extends the state class with counterapp widget as general class which means the state act upon the counterapp class and this is also done to create a connection between the stateclass and widget class;

// Generalization   Generic types allow you to define classes, functions, or methods that can work with any data type. They provide flexibility and type safety by allowing you to use placeholders for types that can be specified later.

// How are Generic Types Used in Dart and Flutter?
// Declaring Generic Types: In Dart, you can declare generic types using angle brackets (<>). For example, List<T> represents a list of elements of type T, where T is the placeholder for the actual data type.

// Using Generic Classes: You can create classes with generic types. These classes can work with any type specified when the class is instantiated.

// Generic Functions and Methods: Functions and methods can also be generic. They allow you to specify types for parameters and return values, making them flexible and reusable.
  int _count = 0;
  void countadd() {
    setState(() {     //Every time this setstate method called the build method invoke and rebuild all the widgets with the updated ones
      _count += 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countadd();
        },
        child: Icon(Icons.add),// this is Icon widget which accepts the data for icon and the icon date is Icons.ANY any widget that is avaiable
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "The Count of button clicks :",
            style: TextStyle(color: Colors.blueGrey, fontSize: 21),
          )),
          Center(
              child: Text(
            "$_count",
            style: TextStyle(color: Colors.amber, fontSize: 26),
          )),
          Container(
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(50)),
              child: IconButton(
                onPressed: countadd,
                icon: Icon(Icons.add),
                iconSize: 45,
              ))
        ],
      ),
    );
  }
}
