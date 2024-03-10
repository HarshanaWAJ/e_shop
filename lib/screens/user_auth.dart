import 'package:e_shop/screens/login._screen.dart';
import 'package:e_shop/screens/user_dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserAuth extends StatelessWidget {
  const UserAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return UserDashboard(); //if the user logged in
        } else {
          return LoginScreen(); //if the user in not logged in
        }
      },
    ));
  }
}
