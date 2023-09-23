import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
   void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.push(
          context,
          CupertinoDialogRoute(
              builder: (context) => const HomeScreen(), context: context));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
    return const Scaffold(
      // backgroundColor: Color.fromARGB(255, 162, 199, 229)
      // ,
      backgroundColor: Color.fromARGB(255, 166, 185, 199),
      );
    
  }
}