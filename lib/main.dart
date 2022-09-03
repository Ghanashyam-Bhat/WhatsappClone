import 'package:flutter/material.dart';
import 'WhatsappHome.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "WhatsAppClone",

      theme: new ThemeData(
        primaryColor: Color(0xff075E54),
        indicatorColor: Colors.white, //For Tab indicator
        accentColor: Color(0xff25D366)
      ),
      
      home: WhatsappHome(),
    );
  }
}