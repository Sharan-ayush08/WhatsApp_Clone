import 'package:clone_application/screens/user_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
                child: Text("Welcome to WhatsApp",
                    style: GoogleFonts.aBeeZee(
                      fontSize: 28,
                      color: Colors.greenAccent[700],
                    )),
              ),
              SizedBox(height: 80),
              Container(
                height: 300,
                child: Image.asset(
                  'assets/images/bg.png',
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 17),
                        children: [
                          TextSpan(text: "Agree and Continue to accept the "),
                          TextSpan(
                              style: TextStyle(color: Colors.cyan),
                              text:
                                  "WhatsApp Terms and Service and Privacy Policy. ")
                        ])),
              ),
              SizedBox(height: 50),
              // ignore: deprecated_member_use
              RaisedButton(
                elevation: 12,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UserData()));
                },
                child: Text(
                  "AGREE AND CONTINUE",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                color: Colors.greenAccent[700],
              )
            ],
          ),
        ),
      ),
    );
  }
}
