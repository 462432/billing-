import 'package:flutter/material.dart';
import 'login.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
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
              const Text(
                textAlign: TextAlign.left,
                "Verify Your Code",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Verify Code",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width / 1.43,
                    height: 30,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Check your SMS inbox, we have sent"),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width / 1.7,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(" you a code at your number.     "),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width / 1.6,
                  )
                ],
              ),
              SizedBox(
                height: 30,
                width: MediaQuery.sizeOf(context).width / 1.3,
                child: TextFormField(),
              ),
              const SizedBox(
                height: 17,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Didn't receive code"),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          side: BorderSide.none),
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Text(
                            'Resend code',
                            style: TextStyle(color: Colors.yellow),
                          ),
                          Icon(Icons.arrow_forward)
                        ],
                      )),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width / 1.8,
                  )
                ],
              ),
              const SizedBox(
                height: 17,
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.black87,
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
                                  "Congratulations",
                                  style: TextStyle(
                                    color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.celebration,
                                  color: Colors.blue,
                                  size: 50,
                                ),
                                SizedBox(
                                  width: 36,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const Text("Successfully Verify Code, we have",style: TextStyle(color: Colors.white),),
                            const Text("sent you code at your number       ",style: TextStyle(color: Colors.white),),
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
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Login()));
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
                    'Verify Code',
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
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Text(
                            'Log in',
                            style: TextStyle(color: Colors.yellow),
                          ),
                          Icon(Icons.arrow_forward)
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
