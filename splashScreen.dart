import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shedule_ease1/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a long-running task to show the splash screen for 3 seconds
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          /*  child: Image.asset(
            'assets/images/shedule_ease_logo.png'), */ // Load your image here
          ),
    );
  }
}
