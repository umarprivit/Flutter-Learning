// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputTextField extends StatelessWidget {
  final TextEditingController txtController;
  final bool obscureText;
  final String text;

  
  
  InputTextField({super.key,required this.txtController,required this.obscureText,required this.text});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
                      obscureText: obscureText, //this is used to hide the text in the textfield
                      validator: (value) {
                        if (value != null &&
                            value.isNotEmpty &&
                            value.length < 4) {
                          return "$text must be greater than 4 characters";
                        } else
                          return null;
                      },
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              color: Colors.black,
                              
                              )),
                      controller: txtController,
                      decoration: InputDecoration(

                          border: OutlineInputBorder(),
                          hintText: "Enter your $text"
                          ),
                      textAlign: TextAlign.center,
                    );
  }
}