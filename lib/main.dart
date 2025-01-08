import 'package:billing/Screens/Content%20Screens/home.dart';
import 'package:billing/Screens/SplashSignup/login.dart';
import 'package:billing/Screens/SplashSignup/password.dart';
import 'package:billing/Screens/SplashSignup/reset.dart';
import 'package:billing/Screens/SplashSignup/splash.dart';
import 'package:flutter/material.dart';

import 'Screens/Content Screens/homeScreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:   const Home(
      ),
    );
  }
}
