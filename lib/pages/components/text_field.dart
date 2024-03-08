import 'package:flutter/material.dart';

class MyTextFeild extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obsecureText;

  const MyTextFeild(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obsecureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obsecureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 255, 135, 36),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 250, 82, 16),
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          fillColor: Color.fromARGB(41, 218, 98, 29),
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 18.0,
            color: Color.fromARGB(132, 0, 0, 0),
          ),
        ),
      ),
    );
  }
}
