import 'package:billing/Screens/Content%20Screens/homeScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
      Padding(
      padding: EdgeInsets.only(
      left: MediaQuery.sizeOf(context).width / 5.5, top: 10,
      right: MediaQuery
          .sizeOf(context)
          .width / 5.5,),

    child: Container(
    color: Colors.white,
    height: MediaQuery.sizeOf(context).height / 1.95,
    child: Column(
    children: [
    Container(
    color: Colors.white,
    child: Row(
    children: [
    Column(children: [
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
    height: 85,
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
    height: 85,
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
    height: 85,
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
    ),
    Column(children: [
    SizedBox(
    width: MediaQuery.sizeOf(context).width/3,
    height: MediaQuery.sizeOf(context).height/3,
    child: Image.asset("Assets/Images/register.jpg"),
    ),
    const Text("Click button to add cost"),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          fixedSize: Size(MediaQuery.sizeOf(context).width/1.55, 45),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          )
        ),

          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Home()));
          },

          child: const Text("Add Cost"))

    ],)


    ],
    ),
    );
  }
}
