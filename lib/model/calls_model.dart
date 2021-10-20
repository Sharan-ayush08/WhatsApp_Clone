import 'package:flutter/material.dart';

class CallsModel {
  String avatarUrl;
  String name;
  String time;
  IconData icon;

  CallsModel(
      {required this.avatarUrl,
      required this.name,
      required this.time,
      required this.icon});
}

List<CallsModel> callModel = [
  CallsModel(
      avatarUrl:
          "https://images.pexels.com/photos/9567708/pexels-photo-9567708.jpeg?cs=srgb&dl=pexels-humberto-baddini-9567708.jpg&fm=jpg",
      name: "Ayush",
      time: "Incoming on 26 September,10:30pm ",
      icon: Icons.video_call_rounded),
  CallsModel(
      avatarUrl:
          "https://images.pexels.com/photos/9567708/pexels-photo-9567708.jpeg?cs=srgb&dl=pexels-humberto-baddini-9567708.jpg&fm=jpg",
      name: "Mahesh",
      time: "Incoming on 26 September,10:30pm ",
      icon: Icons.call),
  CallsModel(
      avatarUrl:
          "https://images.pexels.com/photos/9567708/pexels-photo-9567708.jpeg?cs=srgb&dl=pexels-humberto-baddini-9567708.jpg&fm=jpg",
      name: "Rohit",
      time: "Incoming on 26 September,10:30pm ",
      icon: Icons.video_call_rounded),
  CallsModel(
      avatarUrl:
          "https://images.pexels.com/photos/9567708/pexels-photo-9567708.jpeg?cs=srgb&dl=pexels-humberto-baddini-9567708.jpg&fm=jpg",
      name: "Rahul",
      time: "Incoming on 26 September,10:30pm ",
      icon: Icons.video_call_rounded)
];
