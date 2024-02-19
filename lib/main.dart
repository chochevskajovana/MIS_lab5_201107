import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lab3_201107/screens/splashscreen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab3-201107',

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(49,49,131,1)),
        useMaterial3: true,
      ),
      home: const Splashscreen()
    );
  }
}