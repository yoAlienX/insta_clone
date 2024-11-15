import 'dart:async';
import 'package:flutter/material.dart';
import 'in_between_screen.dart';

void main() {
  runApp(const MaterialApp(
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3, milliseconds: 2), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const InBetweenScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 350),
            Image.asset(
              'assets/icons/instagram.png',
              height: 70,
              width: 70,
            ),
            SizedBox(height: 390),
            Image.asset(
              'assets/icons/splash_bottom.png',
              height: 40,
              width: 70,
            ),
          ],
        ),
      ),
    );
  }
}
