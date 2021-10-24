import 'package:clone_application/model/chats_model.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: callData.length,
            itemBuilder: (context, i) {
              return Column(
                children: [
                  Divider(height: 10),
                  ListTile(
                    leading: CircleAvatar(
                      foregroundColor: Colors.white,
                      backgroundImage: NetworkImage(callData[i].photoUrl),
                    ),
                    title: Text(
                      callData[i].name,
                      style: TextStyle(fontSize: 18),
                    ),
                    subtitle: Text(
                      callData[i].message,
                      style: TextStyle(fontSize: 15),
                    ),
                    trailing: Text(callData[i].time),
                  )
                ],
              );
            }));
  }
}
