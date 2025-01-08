import 'dart:async';

import 'package:billing/Screens/SplashSignup/second_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 1), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const SecondScreen()));
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
              height: 464,
              width: MediaQuery.sizeOf(context).width,
              child: Image.asset(
                "Assets/Images/3d-illustration-wallet-with-coins-credit-cards.jpg",
                fit: BoxFit.fill,
              )),
           Container(
             height: 100,
             width: double.infinity,
             color: Colors.white,
             child: const Text("Split Ease",
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.amberAccent,letterSpacing: 2),
                textAlign: TextAlign.center,),
           )
        ],
      ),
    );
  }
}
