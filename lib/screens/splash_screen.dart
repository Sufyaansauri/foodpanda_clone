import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodpanda_app/screens/location_access_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        const Duration(
          seconds: 3,
        ), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const LocationAccessScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF2885),
      body: Center(
        child: Image.asset(
          "assets/logo.png",
          scale: 3,
        ),
      ),
    );
  }
}
