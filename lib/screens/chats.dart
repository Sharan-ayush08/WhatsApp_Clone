import 'package:clone_application/screens/pages/chat_screen.dart';
import 'package:clone_application/screens/pages/calls_screen.dart';
import 'package:clone_application/screens/pages/camera_screen.dart';
import 'package:clone_application/screens/pages/status_screen.dart';
import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Tab(
                icon: Icon(Icons.camera_alt),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Tab(
                text: "CHATS",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Tab(
                text: "STATUS",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Tab(
                text: "CALLS",
              ),
            )
          ]),
          // backgroundColor: Colors.green[700],
          title: Text("WhatsApp"),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 25,
                )),
            IconButton(
              onPressed: () {},
              icon: PopupMenuButton(
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem(
                      child: Text("New group"),
                    ),
                    PopupMenuItem(
                      child: Text("New broadcast"),
                    ),
                    PopupMenuItem(
                      child: Text("Linked devices"),
                    ),
                    PopupMenuItem(
                      child: Text("Starred messages"),
                    ),
                    PopupMenuItem(
                      child: Text("Payments"),
                    ),
                    PopupMenuItem(
                      child: Text("Settings"),
                    ),
                  ];
                },
                child: Icon(
                  Icons.more_vert,
                  size: 25,
                ),
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            CameraScreen(),
            ChatScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff075E54),
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
          onPressed: () {
            print("DJ BRAVO");
          },
        ),
      ),
    );
  }
}
