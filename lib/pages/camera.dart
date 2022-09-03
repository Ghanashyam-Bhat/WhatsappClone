import 'package:flutter/material.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(100),
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.only(top:550),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: ()=>print("Flash"),
              child: Icon(Icons.flash_off,color: Colors.white,size: 30,) ,
            ),

            GestureDetector(
              onTap: ()=>print("Picture Clicked"),
              child: Icon(Icons.circle_outlined,color: Colors.white,size: 100,),
            ),
            
            GestureDetector(
              onTap: ()=>print("Camera switch"),
              child: Icon(Icons.cameraswitch_outlined,color: Colors.white,size: 30,),
            ),
          ],
          ),
          ),
    );
  }
}