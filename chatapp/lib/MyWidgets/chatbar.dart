

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
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15))),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // In row the main axis is horizoztal and in column the main axis is vertical
          
                  IconButton(
                    alignment: Alignment.center,
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.send),
                    color: Colors.white,
                  )
                ]),
          );
  }
}