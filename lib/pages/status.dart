import 'package:flutter/material.dart';

import '../data/StatusData.dart';
import '../models/StatusModel.dart';

class StatusScreen extends StatelessWidget {
  // const StatusScreen({Key? key}) : super(key: key);
final WhatGreen = Color.fromARGB(255, 9, 112, 100);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
          Stack(
          children: [
            ListView(
              children: [
                Container(
                  child: StatusList(data: statusData),
                  height: 90,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10),
                    child:Text("Recent Updates",textAlign: TextAlign.left,),
                  ),
                
                Container(
                   child:StatusList(data: statusDataNotViewed),
                   height: 220,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10),
                    child:Text("Viewed Updates",textAlign: TextAlign.left,),
                  ),
              
                  Container(
                   child:StatusList(data: statusDataViewed),
                   height: 150,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child:Text("Muted Updates"),
                    ),
                    Icon(Icons.keyboard_arrow_down_outlined,color: Colors.green),
                  ],
                )
              ],
            ),
            
            Padding(
              padding: const EdgeInsets.only(top:665.0,left: 335),
              child: FloatingActionButton(
                onPressed: ()=>print("ButtonPressed"),
                backgroundColor: WhatGreen,
                child:Icon(Icons.camera_alt,color: Colors.white,),
                ),
            ),

            Padding(
              padding: const EdgeInsets.only(top:600.0,left: 340),
              child: SizedBox(
                  height: 52.0,
                  width: 52.0,
                  child: FittedBox(
                    child: FloatingActionButton(
                onPressed: ()=>print("ButtonPressed"),
                backgroundColor: Color.fromARGB(255, 236, 236, 236),
                child:Icon(Icons.edit,color: Colors.black54,),
                ),
                    ),
                  ),
                ),
              ],
    ),
    );
  }
}