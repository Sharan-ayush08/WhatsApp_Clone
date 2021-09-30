import 'package:clone_application/screens/user_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 80.0),
          child: Column(
            children: [
              Center(
                child: Text("WhatsApp Clone",
                    style: GoogleFonts.aBeeZee(
                      fontSize: 40,
                      color: Colors.greenAccent[400],
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText("Welcomes You",
                        speed: Duration(milliseconds: 350),
                        textStyle: TextStyle(
                          fontSize: 32.0,
                        )),
                  ],
                ),
              ),
              SizedBox(height: 100),
              Container(
                height: 200,
                child: Image.asset('assets/images/whatsapp.png'),
              ),
              SizedBox(height: 75),
              // ignore: deprecated_member_use
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UserData()));
                },
                child: Text(
                  "Next",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                color: Colors.green[600],
              )
            ],
          ),
        ),
      ),
    );
  }
}
