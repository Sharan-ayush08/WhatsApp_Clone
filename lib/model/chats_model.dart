class CallsModel {
  String photoUrl;
  String name;
  String message;
  String time;

  CallsModel(
      {required this.photoUrl,
      required this.name,
      required this.message,
      required this.time});
}

List<CallsModel> callData = [
  CallsModel(
      photoUrl:
          "https://images.pexels.com/photos/9669810/pexels-photo-9669810.jpeg?cs=srgb&dl=pexels-mathias-pr-reding-9669810.jpg&fm=jpg",
      name: "A L P H A",
      message: "Hello Developers!!!",
      time: "10:25 pm"),
  CallsModel(
      photoUrl:
          "https://images.pexels.com/photos/9669810/pexels-photo-9669810.jpeg?cs=srgb&dl=pexels-mathias-pr-reding-9669810.jpg&fm=jpg",
      name: "Rahul",
      message: "Hii",
      time: "Yesterday"),
  CallsModel(
      photoUrl:
          "https://images.pexels.com/photos/9669810/pexels-photo-9669810.jpeg?cs=srgb&dl=pexels-mathias-pr-reding-9669810.jpg&fm=jpg",
      name: "Saurabh",
      message: "Assingment Completed",
      time: "5:00 pm"),
  CallsModel(
      photoUrl:
          "https://images.pexels.com/photos/9669810/pexels-photo-9669810.jpeg?cs=srgb&dl=pexels-mathias-pr-reding-9669810.jpg&fm=jpg",
      name: "John",
      message: "Code Pushed",
      time: "4:25 pm")
];
