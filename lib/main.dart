import 'package:camera/camera.dart';
import 'package:clone_application/screens/chats.dart';
import 'package:clone_application/screens/pages/camera_screen.dart';
import 'package:clone_application/screens/user_data.dart';
import 'package:clone_application/screens/welcome_page.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
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
