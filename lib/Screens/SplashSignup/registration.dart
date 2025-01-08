import 'package:billing/Screens/SplashSignup/verification.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("Assets/Images/background.jpg"),
              fit: BoxFit.cover
          )

      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.login_rounded,
                    size: 75,
                    color: Color(0xFFFFD700),
                  ),
                  Icon(
                    Icons.logout_rounded,
                    size: 75,
                    color: Color(0xFFFFD700),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
                 const Text(textAlign: TextAlign.left,
                  "Enter Your Location",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                               ),
              const SizedBox(
                height: 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Enter your location"),
                  SizedBox(width: MediaQuery.sizeOf(context).width/1.6,)
                ],
              ),
              SizedBox(
                height: 40,
                width: MediaQuery.sizeOf(context).width / 1.3,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.flag)),
                      suffix: IconButton(onPressed: (){}, icon:const Icon( Icons.arrow_drop_down_outlined)),
                      labelText: "Choose your Location",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Enter your phone number"),
                  SizedBox(width: MediaQuery.sizeOf(context).width/1.6,)
                ],
              ),

              SizedBox(
                height: 40,
                width: MediaQuery.sizeOf(context).width / 1.3,
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Verification()));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: MediaQuery.of(context).size.width / 1.3,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    'Register',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.minimize_rounded,
                    size: 100,
                    color: Colors.lightBlueAccent,
                  ),
                  Text("OR"),
                  Icon(
                    Icons.minimize_rounded,
                    size: 100,
                    color: Colors.lightBlueAccent,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: MediaQuery.of(context).size.width / 2.6,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Text(
                        'Google',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: MediaQuery.of(context).size.width / 2.6,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey.shade50,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Text(
                        'Facebook',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an Account?"),
                  const SizedBox(
                    width: 3,
                  ),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          side: BorderSide.none),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Login()));

                      },
                      child: const Row(
                        children: [Text('Log in',style: TextStyle(color: Colors.yellow),), Icon(Icons.arrow_forward)],
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
