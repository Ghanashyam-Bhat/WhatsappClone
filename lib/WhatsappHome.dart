import 'package:flutter/material.dart';
import 'pages/camera.dart';
import 'pages/chats.dart';
import 'pages/status.dart';
import 'pages/calls.dart';

class WhatsappHome extends StatefulWidget {
  const WhatsappHome({Key? key}) : super(key: key);

  @override
  State<WhatsappHome> createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome>{
  @override
  final WhatGreen = Color.fromARGB(255, 9, 112, 100);
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:WhatGreen,
          title:Text("WhatsApp"),
          elevation: 0.7,

          actions: [ //For Icons on side
            Icon(Icons.search),
            Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
            Icon(Icons.more_vert),
          ],
          bottom:new TabBar(
            indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.white,
                    ),
            ),
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS",),
              Tab(text: "STATUS",),
              Tab( text: "CALLS",),
            ]
            ),
          
        ),

        body : TabBarView(
            children: [
              new CameraScreen(),
              new ChatsScreen(),
              new StatusScreen(),
              new CallsScreen(),
            ],
          ),

        // floatingActionButton: FloatingActionButton(
        //   onPressed: ()=>print("ButtonPressed"),
        //   backgroundColor: WhatGreen,
        //   child:Icon(Icons.message,color: Colors.white,),
        //   ),
      ),
    );
  }
}