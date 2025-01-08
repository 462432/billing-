import 'package:billing/Screens/SplashSignup/thirdsplash.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
              height: 400,
              width: MediaQuery.sizeOf(context).width,
              child: Image.asset(
                "Assets/Images/balance desktop.jpg",
                fit: BoxFit.fill,
              )),
          Container(
            height: 90,
            width: double.infinity,
            color: Colors.white,
            child: const Column(
              children: [
                Text(
                  "Splitting the costs among ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      letterSpacing: 2),
                ),
                Text(
                  "friends is easy now .......",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      fontSize: 15),
                ),
                Text("Add costs, create groups with your friends "),
                Text("and divide costs with them"),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
          Container(
            height: 76,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {}, child: const Text('Skip')),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width / 2,
                ),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.black87),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SplashThird()));
                    },
                    child: const Icon(Icons.arrow_forward))
              ],
            ),
          )
        ],
      ),
    );
  }
}
