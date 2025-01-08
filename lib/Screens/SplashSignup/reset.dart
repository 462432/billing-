import 'package:billing/Screens/Content%20Screens/home.dart';
import 'package:billing/Screens/SplashSignup/signup.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
                "Reset Your Password",
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
                    suffixIcon: IconButton(
                        style:IconButton.styleFrom(foregroundColor: Colors.blue),
                        onPressed: (){}, icon:  const Icon(Icons.visibility_off_outlined)),
                      labelText: "Enter new password",
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
                      suffixIcon: IconButton( style:IconButton.styleFrom(foregroundColor: Colors.blue),
                          onPressed: () {},
                          icon: const Icon(Icons.visibility_off_outlined)),
                      labelText: "Confirm your password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {
                 showModalBottomSheet(context: context,
                     builder: (BuildContext context){
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
                       "Password successfully updated",
                       style: TextStyle(
                         decoration:TextDecoration.underline ,
                         decorationColor: Colors.yellow,
                       color: Colors.yellow,
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
                       const Text("Please check your email. We have sent you "),
                       const Text("email so that you can reset your password   "),
                       const SizedBox(
                       height: 25,
                       ),
                         GestureDetector(
                           onTap: (){
                             showModalBottomSheet(context: context,
                                 builder: (BuildContext context){
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
                                         "Password successfully updated",
                                         style: TextStyle(
                                             decoration:TextDecoration.underline ,
                                             decorationColor: Colors.yellow,
                                             color: Colors.yellow,
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
                                   const Text("We are facing some problem. Please try"),
                                   const Text("again to reset your password                   "),
                                   const SizedBox(
                                     height: 25,
                                   ),
                                   GestureDetector(
                                     onTap: (){
                                       Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const HomeScreen()));

                                     },
                                     child: Padding(
                                       padding: const EdgeInsets.only(left: 20,right: 20),
                                       child: Container(

                                         alignment: Alignment.center,
                                         height: 40,
                                         width: MediaQuery.of(context).size.width / 1.3,
                                         decoration: BoxDecoration(
                                             color: Colors.red,
                                             borderRadius: BorderRadius.circular(10)),
                                         child: const Text(
                                           'Login',
                                           textAlign: TextAlign.center,
                                         ),
                                       ),
                                     ),
                                   ),
                                 ],
                               );
                                 });
                           },
                           child: Padding(
                             padding: const EdgeInsets.only(left: 20,right: 20),
                             child: Container(
                               alignment: Alignment.center,
                               height: 40,
                               width: MediaQuery.of(context).size.width / 1.3,
                               decoration: BoxDecoration(
                                   color: Colors.yellow,
                                   borderRadius: BorderRadius.circular(10)),
                               child: const Text(
                                 'Reset Password',
                                 textAlign: TextAlign.center,
                               ),
                             ),
                           ),
                         ),
                       ]
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
                    'Reset Password',
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
              Column(
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
                        mainAxisAlignment: MainAxisAlignment.center,
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
