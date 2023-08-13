// ignore_for_file: prefer_const_constructors
import 'package:awaaz/joinmeeting.dart';
import 'package:awaaz/main.dart';
import 'package:awaaz/meetingcontrols.dart';
import 'package:awaaz/signup.dart';
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_video_conference/zego_uikit_prebuilt_video_conference.dart';

void main() {
  runApp(VerifyPolitician());
}

class VerifyPolitician extends StatelessWidget {
  const VerifyPolitician({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'VERIFICATON',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: SafeArea(
          child: Login(),
        ),
      ),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override

  String id = '';

  void SetID(val) {
    setState(() {
      id = val;
    });
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(

                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (cpntext) => Home()));
                  });
                },

                child: Icon(
                  Icons.arrow_back_ios_new,
                ),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(40, 40),
                    shape: CircleBorder(),
                    backgroundColor: Colors.blueGrey.shade900
                ),
              ),

            ),
          ],
        ),
        SizedBox(
          height: 100,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 350,
              child: TextFormField(
                onChanged: (val) {
                  SetID(val);
                },

                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Official ID',
                  hintText: 'Enter your official ID number',
                  prefixIcon: Icon(
                    Icons.perm_identity_sharp,
                    color: Colors.blueGrey.shade900,
                  ),

                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 120,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  if (id.isEmpty) {
                    showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: Text("Please enter all fields."),
                          actions: [
                            TextButton(
                                onPressed: () => Navigator.pop(context, 'Cancel'),
                                child: Text("Cancel"),
                            ),
                            TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: Text("OK"),
                            )
                          ],
                        ),
                    );
                  } else {
                    Navigator.push(context, MaterialPageRoute(builder: (cpntext) => JoinMeeting()));
                  }

                },
                child: Text(
                  'Verify',
                  style: TextStyle(
                      fontSize: 15
                  ),

                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey.shade900,

                ),
              ),
            )
          ],
        ),


      ],

    );
  }
}







