class statusDataInd {
  final name;
  final url;
  final isViewed;
  final time; 

  const statusDataInd({required this.name, required this.url, required this.isViewed, required this.time}) ; 
}


// List chatData = [["Ghanashyam","1.jpeg","Message","5:30 pm"]];

List <statusDataInd> statusData = 
[
  statusDataInd(name: "Ghanashyam Bhat", url: "gb.jpeg", isViewed: false, time: "Just now"),
  
];

List <statusDataInd> statusDataNotViewed = 
[
  statusDataInd(name: "Elon Musk", url: "elon.jpg", isViewed: false, time: "Today, 5:30 pm"),
  statusDataInd(name: "Jeff Bezos", url: "jeff.jpg", isViewed: false, time: "Today, 7:30 am"),
  statusDataInd(name: "Lionel Messi", url: "messi.jpg", isViewed: false, time: "Today, 3:30 am"),
];

List <statusDataInd> statusDataViewed = 
[
  statusDataInd(name: "Cristiano Ronaldo", url: "ronaldo.jpg", isViewed: true, time: "50 minutes ago"),
  statusDataInd(name: "Narendra Modi", url: "modi.jpg", isViewed: true, time: "20 minutes ago"),
];
