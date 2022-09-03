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
      length: 3,
      initialIndex: 0,
      
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.39),
          child: Container(
            decoration: BoxDecoration(
              color: WhatGreen,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:25.0,left:25),
                      child: Text(
                        "WhatsApp",
                        style: TextStyle(
                          color:Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 25,
                        ),
                        ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.search,color: Colors.white,),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                        Icon(Icons.more_vert,color: Colors.white,),
                      ],
                    ),
                  ],
                ),
                
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:10.0),
                      child: IconButton(icon : Icon(Icons.camera_alt),color: Colors.white,onPressed: (){},),
                    ),
                    Expanded(
                      child:SizedBox(width: double.maxFinite,
                      height: 10,
                      child: SafeArea(child: 
                    TabBar(
                      indicator: UnderlineTabIndicator(
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.white,
                              ),
                      ),
                      tabs: [
                        // Tab(icon: Icon(Icons.camera_alt)),
                        Tab(text: "CHATS",),
                        Tab(text: "STATUS",),
                        Tab( text: "CALLS",),
                      ]
                    ),
                    ),
                      ))
                  ],
                )
              ],
            ),
          ),
          ),

        body : TabBarView(
            children: [
              // new CameraScreen(),
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