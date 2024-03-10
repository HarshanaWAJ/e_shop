import 'package:e_shop/components/buttons.dart';
import 'package:e_shop/components/squre_tile.dart';
import 'package:e_shop/components/text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

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
                width: 80.0,
              ),
              SizedBox(
                height: 20.0,
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
                height: 15.0,
              ),
              MyTextFeild(
                controller: passwordController,
                hintText: "Password",
                obsecureText: true,
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password",
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              MyButton(
                onTap: signUserIn,
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1.5,
                        color: Color.fromARGB(255, 250, 82, 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        "Or continue with",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Times new roman',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1.5,
                        color: Color.fromARGB(255, 250, 82, 16),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [MySquareTile(cardImg: 'assets/images/google.png')],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a User,"),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text("Register Now")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
