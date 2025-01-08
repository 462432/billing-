import 'package:billing/Screens/SplashSignup/password.dart';
import 'package:billing/Screens/SplashSignup/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("Assets/Images/background.jpg"),
              fit: BoxFit.cover)),
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
              const Text(
                "Login Your Account",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 28,
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 40,
                width: MediaQuery.sizeOf(context).width / 1.3,
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Enter Email Address",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 40,
                width: MediaQuery.sizeOf(context).width / 1.3,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      suffix: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.visibility_off_outlined)),
                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: MediaQuery.of(context).size.width / 1.3,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    'Login',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width / 9.7,
                  ),
                  TextButton(
                      style:
                          TextButton.styleFrom(foregroundColor: Colors.yellow),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const ForgetPassword()));

                      },
                      child: const Text(
                        'Forget Password?',
                        style: TextStyle(decoration: TextDecoration.underline,
                        decorationColor: Colors.yellow),
                      )),
                ],
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
                          borderRadius: BorderRadius.circular(10)),
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
                          color: Colors.blueGrey.shade100,
                          borderRadius: BorderRadius.circular(10)),
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
                 children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width / 8.82,
                  ),
                  const Text("Don't have an Account?"),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: BorderSide.none),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUp()));
                      },
                      child: const Row(
                        children: [
                          Text(
                            'REGISTER',style: TextStyle(color: Colors.yellow),),
                          Icon(Icons.arrow_forward,color: Colors.yellow,),
                        ],
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
