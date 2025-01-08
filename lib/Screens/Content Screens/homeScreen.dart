import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State <Home> createState() => _HomeState();
}

class _HomeState extends State <Home> {
  final List<Map<String, String>> items =[
    {"title":'Saqlain','subtitle':"17 nov",'costs':"\$220,98",'product':'Laptop'},
    {"title":'Saqlain','subtitle':"17 nov",'costs':"\$220,98",'product':'Laptop'},
    {"title":'Saqlain','subtitle':"17 nov",'costs':"\$220,98",'product':'Laptop'},
    {"title":'Saqlain','subtitle':"17 nov",'costs':"\$220,98",'product':'Laptop'},

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.sizeOf(context).width / 5.5, top: 10,
          right: MediaQuery
              .sizeOf(context)
              .width / 5.5,),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Container(
                color: Colors.white,
                height: MediaQuery.sizeOf(context).height / 2,
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              children: [
                            RichText(
                                text: const TextSpan(children: [
                                  TextSpan(text: "Good Morning"),
                                  WidgetSpan(
                                      child: Icon(Icons.keyboard_arrow_down_outlined))
                                ])),
                            const Text(
                              "Saqlain                 ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ]),

                          const Icon(
                            Icons.person,
                            size: 40,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Container(
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.yellow),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("I'm owned"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "425,00\$     ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: MediaQuery.sizeOf(context).width / 2),
                          Align(
                              alignment: Alignment.topLeft,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.visibility_outlined)))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width/3.27,
                          height: 80,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey
                              ),
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey.shade100),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("My costs"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "-425,00\$     ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 21,
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width/3.27,
                          height: 80,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Total costs"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "-425,00\$     ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width/6.5,
                              height: 65,
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                border: Border.all(

                                    color: Colors.grey
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.call_split,
                                      color: Colors.black,),
                                    Text("Split Bill")
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width/6.5,
                              height: 65,
                              decoration: BoxDecoration(
                                border: Border.all(

                                    color: Colors.grey
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.call_split,
                                      color: Colors.black,),
                                    Text("Split Bill")
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width/6.5,
                              height: 65,
                              decoration: BoxDecoration(
                                border: Border.all(

                                    color: Colors.grey
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.qr_code,
                                      color: Colors.black,),
                                    Text("QR Pay")
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width/6.5,
                              height: 65,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.adf_scanner_rounded,
                                      color: Colors.black,),
                                    Text("Scan !"),
                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),

            Container(
               height: MediaQuery.sizeOf(context).height/3.55,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                 color: Colors.grey.shade200,
               ),
               child: Padding(
                 padding:  const EdgeInsets.all(8.0),
                 child:  Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     const SizedBox(height: 3,),
                     const Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text("Total Bill"),
                         Text("22,500\$",style: TextStyle(fontWeight: FontWeight.bold),)
                       ],
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         const Text("Split with"),
                         TextButton(onPressed: (){}, child: const Text("Edit",style: TextStyle(color: Colors.black),))
                           ],
                     ),
                     Container(
                       height: 36,
                       decoration: BoxDecoration(
                           color: Colors.grey.shade400,
                           borderRadius: BorderRadius.circular(20)
                       ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Container(
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(30)
                             ),
                             child: const Icon(Icons.person,size: 35,),
                           ),
                           Container(
                             decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(30)
                             ),
                             child: const Icon(Icons.person,size: 35,),
                           ),
                           Container(
                             decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(30)
                             ),
                             child: const Icon(Icons.person,size: 35,),
                           ),
                           Container(
                             decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(30)
                             ),
                             child: const Icon(Icons.person,size: 35,),
                           ),
                           Container(
                             decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(30)
                             ),
                             child: const Icon(Icons.person,size: 35,),
                           ),
                           Container(
                             decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(30)
                             ),
                             child: const Icon(Icons.person,size: 35,),
                           ),
                           Container(
                             decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(30)
                             ),
                             child: const Icon(Icons.person,size: 35,),
                           ),
                           Container(
                             decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(30)
                             ),
                             child: const Icon(Icons.person,size: 35,),
                           ),
                           Container(
                             decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(30)
                             ),
                             child: const Icon(Icons.person,size: 35,),
                           ),


                         ],
                       ),

                     ),
                     const SizedBox(
                       height: 4,
                     ),
                     ElevatedButton(
                         style: ElevatedButton.styleFrom(
                           fixedSize: Size(MediaQuery.sizeOf(context).width/1.5, 35),
                           backgroundColor: Colors.yellow,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(11)
                           )
                         ),
                         onPressed: (){},
                         child: const Text("Split Now",style: TextStyle(color: Colors.black),)),
                   ],
                 ),
               ),

             ),
           const Text("Transaction History",style: TextStyle(color: Colors.grey),),

            const Column(
              children: [
                ListTile(

                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
