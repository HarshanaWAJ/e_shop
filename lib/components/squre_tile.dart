import 'package:flutter/material.dart';

class MySquareTile extends StatelessWidget {
  final String cardImg;
  const MySquareTile({super.key, required this.cardImg});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Color.fromARGB(223, 252, 59, 25),
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Image.asset(
        cardImg,
        width: 50.0,
      ),
    );
  }
}
