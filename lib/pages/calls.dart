import 'package:flutter/material.dart';
import '../data/CallData.dart';
import '../models/CallModel.dart';


class CallsScreen extends StatelessWidget {
  // const CallsScreen({Key? key}) : super(key: key);
  final WhatGreen = Color.fromARGB(255, 9, 112, 100);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child:CallList(data: callData),
        ),
        Padding(
          padding: const EdgeInsets.only(top:665.0,left: 335),
          child: FloatingActionButton(
            onPressed: ()=>print("ButtonPressed"),
            backgroundColor: WhatGreen,
            child:Icon(Icons.add_ic_call_rounded,color: Colors.white,),
            ),
        ),
      ],
    );
  }
}