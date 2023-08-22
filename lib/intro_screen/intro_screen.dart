// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:axcalc/main.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initializeSplash() async {
    await Future.delayed(const Duration(seconds: 4));
    goToHomePage();
  }

  void goToHomePage() {
    GoRouter.of(context).pushReplacement('/home');
  }

  @override
  void initState() {
    super.initState();
    initializeSplash();
  }

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    double maxWidth = mediaQuery.width;
    double maxHeight = mediaQuery.height;

    return Scaffold(
      backgroundColor: onPrimary,
      body: SizedBox(
        width: maxWidth,
        height: maxHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Image(image: AssetImage('assets/images/Frame.png'))],
        ),
      ),
    );
  }
}
