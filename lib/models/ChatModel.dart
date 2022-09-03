import 'package:flutter/material.dart';

class ChatModel extends StatelessWidget {
  final name;
  final url;
  final message;
  final time; 
  final newMsg;

  const ChatModel({Key? key , required this.name, required this.url, required this.message, required this.time,required this.newMsg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: ListTile(

        title: Text(this.name),

        subtitle: Text(this.message),

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

        trailing:Column(children: [
          Text(
          this.time,
          style: TextStyle(
            color: this.newMsg==0?Colors.black54:Color(0xff25D366),
          ),
          ),
          NewMsgCont(newMsg: this.newMsg)
          // this.newMsg==0?Text(""):Padding(child: Text(newMsg.toString(),style: TextStyle(color: Colors.green),),padding: EdgeInsets.only(top: 3)),
        ],)
         
          
      ),
    );
  }
}

class NewMsgCont extends StatelessWidget {
  final newMsg;
  const NewMsgCont({Key? key, required this.newMsg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return newMsg==0?SizedBox(height: 0):
    SizedBox(
          height: 26,
          width: 26,
          child:Container(
             child:Padding(padding: EdgeInsets.only(top:4),
             child: Text(newMsg.toString(),
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
              ),
             ),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(100),
              //Surprisingly relative path worked
            ),
            )
      
        );
  }
}

class ChatList extends StatelessWidget {
  final data;
  
  const ChatList({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder:(context,index){
        return ChatModel(name: data[index].name, url: data[index].url, message: data[index].message, time: data[index].time,newMsg: data[index].newMsg,);
        // return ChatModel(name: data[index][0], url: data[index][1], message: data[index][2], time: data[index][3]);
      }
      );
  }
}