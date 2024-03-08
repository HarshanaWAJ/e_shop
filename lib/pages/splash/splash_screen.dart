import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("assets/images/image2.jpg"),
            fit: BoxFit.fill,
            opacity: 0.4,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo.png",
              height: 200.0,
            ),
            SizedBox(
              height: 50.0,
            ),
            Lottie.network(
                "https://lottie.host/bfed9e09-6777-4eb6-beb4-734e8b805d92/RBWw9C7EaX.json",
                height: 100.0)
          ],
        ),
      ),
    );
  }
}
