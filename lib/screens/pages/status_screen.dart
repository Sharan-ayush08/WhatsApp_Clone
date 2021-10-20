import 'package:clone_application/model/status_model.dart';
import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: statusData.length,
        itemBuilder: (context, i) {
          return Column(
            children: [
              Divider(height: 10),
              ListTile(
                leading: CircleAvatar(
                  foregroundColor: Colors.white,
                  backgroundImage: NetworkImage(statusData[i].statusUrl),
                ),
                title: Text(
                  statusData[i].name,
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Text(statusData[i].time),
              )
            ],
          );
        },
      ),
    );
  }
}
