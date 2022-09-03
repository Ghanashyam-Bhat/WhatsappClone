import 'package:flutter/material.dart';


class StatusModel extends StatelessWidget {
  final name;
  final url;
  final time; 
  final isViewed;
  const StatusModel({Key? key,required this.name, required this.url, required this.isViewed, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: ListTile(

        title: Text(this.name),

        subtitle:  Text(
            this.time,
            style: TextStyle(
              color: Colors.black54,
            ),
          ),

        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
            border: isViewed?Border.all(color: Colors.grey,width: 2,style: BorderStyle.solid):Border.all(color: Colors.green,width: 3,style: BorderStyle.solid),
            //Surprisingly relative path worked
            image: DecorationImage(image: AssetImage("assets/pp/${this.url}"),fit: BoxFit.cover)
          ),
        ),          
      ),
    );
  }
}


class StatusList extends StatelessWidget {
  final data;
  const StatusList({Key? key,required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder:(context,index){
        return StatusModel(name: data[index].name, url: data[index].url, isViewed: data[index].isViewed, time: data[index].time);
        // return ChatModel(name: data[index][0], url: data[index][1], message: data[index][2], time: data[index][3]);
      }
      );
  }
}