import 'dart:async';

import 'package:flutter/material.dart';

import '../widgets/authentication.dart';
import 'home.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    Timer(const Duration(seconds: 5), () =>
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const AuthGate())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              "MIS-Lab5-201107",
              style: TextStyle(
                color: Color.fromRGBO(49, 49, 131, 1),
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Roboto",
                decoration: TextDecoration.none,
              ),
            ),
          ),
          SizedBox(height: 20),
          const Center(
            child: Text(
              "Exam schedule",
              style: TextStyle(
                color: Color.fromRGBO(42,147,209,1),
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: "Roboto",
                decoration: TextDecoration.none,
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Image.network(
              'https://www.finki.ukim.mk/Content/dataImages/downloads/logo-large-500x500_2.png',
              height: 250,
              width: 250,
            ),
          ),
        ],
      ),
    );
  }
}