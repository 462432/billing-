import 'package:billing/Screens/SplashSignup/signup.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
          color: Colors.transparent,
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
              const Text("Forget Password",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold), ),
              RichText(text: const TextSpan(
                children: [
                  TextSpan(text: "Please enter your "),
                  TextSpan(text: 'email address or \n phone number',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: " to reset your password")
                ]
              )),
              const SizedBox(
                height: 28,
              ),
              SizedBox(
                height: 40,
                width: MediaQuery.sizeOf(context).width / 1.3,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter Email Address",
                    border: OutlineInputBorder(
                       borderRadius:  BorderRadius.circular(10),

                    )
                  ),
                ),
              ),
          const SizedBox(
            height: 20,),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Column(

                          children: [
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width,
                              height: 40,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Email Sent Successfully",
                                  style: TextStyle(
                                      color: Colors.yellow,
                                      fontSize: 19,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.yellow,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.celebration,
                                  color: Colors.blue,
                                  size: 50,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const Text("Please check your Email.We have sent you",style: TextStyle(color: Colors.black),),
                            const Text("email so that you can reset your password",style: TextStyle(color: Colors.black),),
                            const SizedBox(
                              height: 25,
                            ),
                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                    backgroundColor: Colors.black87,
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          const Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.highlight_remove_sharp,
                                                color: Colors.blue,
                                                size: 35,
                                              ),
                                              Text(
                                                "Wrong Code. Try Again ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),

                                            ],
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text(
                                            "Wrong Code, we have sent                ",style: TextStyle(color: Colors.white,),),

                                          const Text(
                                            "you the code at your number.           ",style: TextStyle(color: Colors.white),),
                                          const SizedBox(height: 30,),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 40,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                                  2.6,
                                              decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      10)),
                                              child: const Text(
                                                'Try Again',
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: MediaQuery.of(context).size.width / 2.6,
                                decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Text(
                                  'Go',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        );
                      });
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: MediaQuery.of(context).size.width / 1.3,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    'Send',
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
                    size: 90,
                    color: Colors.lightBlueAccent,
                  ),
                  Text("OR"),
                  Icon(
                    Icons.minimize_rounded,
                    size: 90,
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
                          color: Colors.blueGrey.shade50,
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an Account?"),
                  const SizedBox(
                    width: 3,
                  ),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          side: BorderSide.none),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUp()));
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'REGISTER',
                            style: TextStyle(color: Colors.yellow),
                          ),
                          Icon(Icons.arrow_forward,color: Colors.yellow,)
                        ],
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
