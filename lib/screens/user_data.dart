import 'dart:io';
import 'package:clone_application/screens/chats.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserData extends StatefulWidget {
  const UserData({Key? key}) : super(key: key);

  @override
  _UserDataState createState() => _UserDataState();
}

class _UserDataState extends State<UserData> {
  TextEditingController nameCtrlr = TextEditingController();

  final ImagePicker _picker = ImagePicker();
  File? _imageFile;
  _takePhoto(BuildContext context, ImageSource source) async {
    // ignore: deprecated_member_use
    final _pickedFile = await _picker.getImage(source: source);
    setState(() {
      if (_pickedFile != null) {
        _imageFile = File(_pickedFile.path);
      } else {
        print('Image not selected');
      }
    });
  }

  bool validate = false;
  final _formKey = GlobalKey<FormState>();

  moveToChat(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        validate = true;
      });
      Navigator.push(context, MaterialPageRoute(builder: (context) => Chats()));
      setState(() {
        validate = false;
      });
    }
  }

  @override
  void dispose() {
    nameCtrlr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Text(
          "Profile",
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 50, horizontal: 120),
                      child: CircleAvatar(
                        radius: 75,
                        backgroundColor: Colors.white,
                        backgroundImage: _imageFile == null
                            ? AssetImage("assets/images/user_icon.png")
                            : FileImage(_imageFile!) as ImageProvider,
                      ),
                    ),
                    Positioned(
                      top: 160,
                      left: 195,
                      // ignore: deprecated_member_use
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            _showDialog();
                          });
                        },
                        color: Colors.green,
                        child: Icon(
                          Icons.add_a_photo,
                        ),
                        shape: CircleBorder(),
                      ),
                    ),
                  ],
                ),
                ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      height: double.infinity,
                      child: Icon(Icons.person),
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: TextFormField(
                      controller: nameCtrlr,
                      decoration: InputDecoration(labelText: "Name"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Name is Required";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                ),
                ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      height: double.infinity,
                      child: Icon(Icons.phone),
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: "Phone"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter 10 digit Mobile No.";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                ),
                SizedBox(height: 50),
                // ignore: deprecated_member_use
                RaisedButton(
                  onPressed: () {
                    moveToChat(context);
                  },
                  color: Colors.green,
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _showDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'Choose Option.',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        _takePhoto(context, ImageSource.camera);
                        Navigator.pop(context);
                      },
                      child: Row(
                        children: [
                          Icon(Icons.camera),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Camera"),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        _takePhoto(context, ImageSource.gallery);
                        Navigator.pop(context);
                      },
                      child: Row(
                        children: [
                          Icon(Icons.photo),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Photo"),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
