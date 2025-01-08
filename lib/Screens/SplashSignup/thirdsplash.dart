import 'package:billing/Screens/SplashSignup/signup.dart';
import 'package:flutter/material.dart';

class SplashThird extends StatefulWidget {
  const SplashThird({super.key});

  @override
  State<SplashThird> createState() => _SplashThirdState();
}

class _SplashThirdState extends State<SplashThird> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                SizedBox(
                    height: 400,
                    width: MediaQuery.sizeOf(context).width,
                    child: Image.asset(
                      "Assets/Images/account-balance-vector.png",
                      fit: BoxFit.fill,
                    )),
                Image.asset(
                  "Assets/Images/mobi balance.jpg",
                  fit: BoxFit.fill,
                ),
                Positioned(
                  top: -100,
                  right: -1,
                  child: Image.asset(
                    "Assets/Images/sec mobi balance.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            Container(
              height:  90,
              width: double.infinity,
              color: Colors.white70,
              child: const Column(
                children: [
                  Text("Splitting the costs among ",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,letterSpacing: 2),),
                  Text("friends is easy now .......",
                    style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 2,fontSize: 15),),
                  Text("Add costs, create groups with your friends "),
                  Text("and divide costs with them"),
                  SizedBox(height: 5,),
                ],
              ),
            ),
            Container(
              height: 76,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(foregroundColor:
                      Colors.white,backgroundColor: Colors.black87),
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SignUp()));
                  }, child: const Text("Get Started") )
                ],),
            )
          ],
        ),
      ),
    );
  }
}
