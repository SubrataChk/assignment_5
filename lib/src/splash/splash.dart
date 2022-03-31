import 'dart:async';
import 'package:sizer/sizer.dart';

import 'package:assignment_5/src/nav/navigation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  setTimer() {
    Timer(Duration(seconds: 4), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => NaviGationSection()));
    });
  }

  @override
  void initState() {
    super.initState();
    setTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Container(
            height: 40.h,
            width: double.infinity,
            child: Lottie.asset(
              "assets/splash.json",
            ),
          ),
        )
      ],
    )));
  }
}
