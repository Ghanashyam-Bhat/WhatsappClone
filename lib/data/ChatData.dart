import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class chatDataInd {
  final name;
  final url;
  final message;
  final time; 
  final newMsg;

  const chatDataInd({required this.name, required this.url, required this.message, required this.time, required this.newMsg}) ; 
}


// List chatData = [["Ghanashyam","1.jpeg","Message","5:30 pm"]];

List <chatDataInd> chatData = 
[
  chatDataInd(name: "MS Dhoni", url: "dhoni.jpg", message: "I will play IPL this year :)", time: "Yesterday", newMsg: 2),
  
  chatDataInd(name: "Draupadi Murmu", url: "draupadi.jpg", message: "Thank you!!", time: "Yesterday", newMsg: 1),

  chatDataInd(name: "Elon Musk", url: "elon.jpg", message: "Is this design correct?", time: "Yesterday", newMsg: 3),

  chatDataInd(name: "jeff Bezos", url: "jeff.jpg", message: "Did you receive your order?", time: "Yesterday", newMsg: 1),

  chatDataInd(name: "Lionel Messi", url: "messi.jpg", message: "Ronaldo is mad at me !!", time: "23/7/2022", newMsg: 2),

  chatDataInd(name: "Narendra Modi", url: "modi.jpg", message: "I will consider that", time: "23/7/2022", newMsg: 0),

  chatDataInd(name: "Cristiano Ronaldo", url: "ronaldo.jpg", message: "I am just pulling his leg xD", time: "23/7/2022", newMsg: 2),

  chatDataInd(name: "Steve Jobs", url: "steve.jpg", message: "Okay", time: "23/7/2022", newMsg: 0),

  chatDataInd(name: "Virat Kohli", url: "virat.jpg", message: "Done", time: "24/7/2022", newMsg: 0),

  chatDataInd(name: "Anupama Parameshwaran", url: "anupama.jpg", message: ":)", time: "22/7/2022", newMsg: 0),

  chatDataInd(name: "Hrithik Roshan", url: "hrithik.jpg", message: "How is the movie?", time: "22/7/2022", newMsg: 1),

  chatDataInd(name: "Rohit Sharma", url: "rohit.jpg", message: "Am I the captain?", time: "21/7/2022", newMsg: 1),

  chatDataInd(name: "Roronoa Zoro", url: "zoro.jpg", message: "Will you be my master?", time: "21/7/2022", newMsg: 4),

];