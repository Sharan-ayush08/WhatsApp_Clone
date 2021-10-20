import 'package:clone_application/model/calls_model.dart';
import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: callModel.length,
            itemBuilder: (context, i) {
              return Column(
                children: [
                  Divider(
                    height: 10,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      foregroundColor: Colors.white,
                      backgroundImage: NetworkImage(callModel[i].avatarUrl),
                    ),
                    title: Text(
                      callModel[i].name,
                      style: TextStyle(fontSize: 15),
                    ),
                    subtitle: Text(callModel[i].time),
                    trailing: Icon(
                      callModel[i].icon,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ],
              );
            }));
  }
}
