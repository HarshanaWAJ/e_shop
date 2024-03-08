import 'package:e_shop/pages/components/text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 250, 178, 45),
              Color.fromARGB(255, 255, 255, 255)
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30.0,
              ),
              Image.asset(
                "assets/images/black_logo.png",
                width: 100.0,
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Welcome back... ! ",
                style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: 'Times new roman',
                  wordSpacing: 2.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.black87,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              MyTextFeild(
                controller: usernameController,
                hintText: "Email Address",
                obsecureText: false,
              ),
              SizedBox(
                height: 30.0,
              ),
              MyTextFeild(
                controller: passwordController,
                hintText: "Password",
                obsecureText: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
