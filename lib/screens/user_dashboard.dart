import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserDashboard extends StatelessWidget {
  UserDashboard({super.key});

  //Sign Out method
  void userSignOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: userSignOut,
            icon: Icon(
              Icons.logout,
            ),
          ),
        ],
      ),
      body: Center(
          child: Text(
        "User Dashboard " + (user.email.toString()),
      )),
    );
  }
}
