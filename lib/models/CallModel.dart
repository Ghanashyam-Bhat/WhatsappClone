import 'package:flutter/material.dart';

class Call_out extends StatelessWidget {
  final out;
  final icColor;
  const Call_out({Key? key, required this.out, required this.icColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return this.out?Icon(Icons.call_made,color:icColor,):Icon(Icons.call_received,color: icColor,);
  }
}

class CallModel extends StatelessWidget {
  final name;
  final url;
  final time; 
  final out;
  final isReceived;
  final isVideo;

  const CallModel({Key? key, required this.name, required this.url, required this.time,this.out,required this.isReceived, required this.isVideo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: ListTile(

        title: Text(this.name),

        subtitle:  Row(children: [
          Call_out(out: this.out,icColor:this.isReceived?Colors.green:Colors.red),
          Text(
            this.time,
            style: TextStyle(
              color: Colors.black54,
              ),
            ),
        ],),
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
            //Surprisingly relative path worked
            image: DecorationImage(image: AssetImage("assets/pp/${this.url}"),fit: BoxFit.cover)
          ),
        ),

        trailing:isVideo?Icon(Icons.video_call_rounded,color: Color(0xff25D366),):Icon(Icons.call,color: Color(0xff25D366),)
          
      ),
    );
  }
}


class CallList extends StatelessWidget {
  final data;
  const CallList({Key? key,required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder:(context,index){
        return CallModel(name: data[index].name, url: data[index].url,time: data[index].time,out: data[index].out,isReceived: data[index].isReceived, isVideo: data[index].isVideo,);
        // return ChatModel(name: data[index][0], url: data[index][1], message: data[index][2], time: data[index][3]);
      }
      );
  }
}
