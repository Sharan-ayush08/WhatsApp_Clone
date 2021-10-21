class StatusModel {
  String name;
  String time;
  String statusUrl;

  StatusModel(
      {required this.name, required this.time, required this.statusUrl});
}

List<StatusModel> statusData = [
  StatusModel(
      name: "My Status",
      time: "Tap to add Status",
      statusUrl:
          "https://images.pexels.com/photos/9567708/pexels-photo-9567708.jpeg?cs=srgb&dl=pexels-humberto-baddini-9567708.jpg&fm=jpg"),
  StatusModel(
      name: "Rahul",
      time: "10 minutes ago",
      statusUrl:
          "https://images.pexels.com/photos/9567708/pexels-photo-9567708.jpeg?cs=srgb&dl=pexels-humberto-baddini-9567708.jpg&fm=jpg"),
  StatusModel(
      name: "Saurabh",
      time: "13 minute ago",
      statusUrl:
          "https://images.pexels.com/photos/9567708/pexels-photo-9567708.jpeg?cs=srgb&dl=pexels-humberto-baddini-9567708.jpg&fm=jpg"),
  StatusModel(
      name: "Ritesh",
      time: "Just Now",
      statusUrl:
          "https://images.pexels.com/photos/9567708/pexels-photo-9567708.jpeg?cs=srgb&dl=pexels-humberto-baddini-9567708.jpg&fm=jpg")
];
