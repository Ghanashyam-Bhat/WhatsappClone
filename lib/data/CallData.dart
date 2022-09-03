class callDataInd {
  final name;
  final url;
  final time; 
  final out;
  final isReceived;
  final isVideo;

  const callDataInd({required this.name, required this.url, required this.time,required this.out,required this.isReceived, required this.isVideo}) ; 
}


// List chatData = [["Ghanashyam","1.jpeg","Message","5:30 pm"]];

List <callDataInd> callData = 
[
  callDataInd(name: "Elon Musk", url: "elon.jpg",  time: "Today, 7:30 pm", out:false,isReceived: true,isVideo: true),
  
  callDataInd(name: "Steve Jobs", url: "steve.jpg",  time: "Yesterday, 7:30 pm", out:false,isReceived: true,isVideo: false),

  callDataInd(name: "Narendra Modi", url: "modi.jpg",  time: "Yesterday, 11:30 am", out:true,isReceived: false,isVideo: false),

  callDataInd(name: "Elon Musk", url: "elon.jpg",  time: "Yesterday, 10:00 am", out:false,isReceived: true,isVideo: true),

  callDataInd(name: "Draupadi Murmu", url: "draupadi.jpg",  time: "23/7/2022, 7:30 am", out:false,isReceived: false,isVideo: false),

  callDataInd(name: "Elon Musk", url: "elon.jpg",  time: "22/7/2022, 9:30 pm", out:true,isReceived: true,isVideo: true),

  callDataInd(name: "Lionel Messi", url: "messi.jpg",  time: "20/7/2022, 2:30 pm", out:false,isReceived: true,isVideo: false),

  callDataInd(name: "Narendra Modi", url: "modi.jpg",  time: "19/7/2022, 11:30 am", out:true,isReceived: false,isVideo: false),

  callDataInd(name: "Elon Musk", url: "elon.jpg",  time: "19/7/2022, 10:00 am", out:false,isReceived: true,isVideo: true),

  callDataInd(name: "Draupadi Murmu", url: "draupadi.jpg",  time: "18/7/2022, 7:30 am", out:false,isReceived: false,isVideo: false),

  callDataInd(name: "Elon Musk", url: "elon.jpg",  time: "18/7/2022, 9:30 pm", out:true,isReceived: true,isVideo: true),

  callDataInd(name: "Lionel Messi", url: "messi.jpg",  time: "17/7/2022, 2:30 pm", out:false,isReceived: true,isVideo: false),
];