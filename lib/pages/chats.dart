import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/ChatModel.dart';
import '../data/ChatData.dart';

class ChatsScreen extends StatelessWidget {

  // const ChatsScreen({Key? key}) : super(key: key);
  final WhatGreen = Color.fromARGB(255, 9, 112, 100);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child:ChatList(data: chatData),
        ),
        Padding(
          padding: const EdgeInsets.only(top:665.0,left: 335),
          child: FloatingActionButton(
            onPressed: ()=>print("ButtonPressed"),
            backgroundColor: WhatGreen,
            child:Icon(Icons.message,color: Colors.white,),
            ),
        ),
      ],
    );
    
  }
}