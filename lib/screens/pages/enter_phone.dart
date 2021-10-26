import 'package:flutter/material.dart';

class PhoneDetails extends StatelessWidget {
  const PhoneDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Enter your phone number",
          style: TextStyle(color: Colors.teal[600]),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(height: 10),
            Text("WhatsApp will send an SMS message to verify your number."),
            SizedBox(height: 5),
            Text(
              "What's my Number?",
              style: TextStyle(color: Colors.cyan, fontSize: 15),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  Widget countryCard() {
    return Container(
      decoration: BoxDecoration(border: Border.all()),
    );
  }
}
