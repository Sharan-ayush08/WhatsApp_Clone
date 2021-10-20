import 'package:clone_application/screens/chats.dart';
import 'package:clone_application/screens/user_data.dart';
import 'package:clone_application/screens/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Clone());
}

class Clone extends StatelessWidget {
  const Clone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xff075E54),
          // ignore: deprecated_member_use
          accentColor: Colors.green),
      debugShowCheckedModeBanner: false,
      initialRoute: "/chats",
      routes: {
        "/": (context) => WelcomePage(),
        "/user": (context) => UserData(),
        "/chats": (context) => Chats(),
      },
    );
  }
}
