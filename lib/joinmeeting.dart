// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:awaaz/main.dart';
import 'package:zego_uikit_prebuilt_video_conference/zego_uikit_prebuilt_video_conference.dart';
import 'utils.dart';
import 'dart:math' as math;
import 'package:zego_uikit_prebuilt_video_conference/zego_uikit_prebuilt_video_conference.dart';

final String localUserID = math.Random().nextInt(10000).toString();

const String callID = "group_call_id";

void main() => runApp(JoinMeeting());

class JoinMeeting extends StatelessWidget {
  const JoinMeeting({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var conferenceDTextCtrl = TextEditingController(text: "");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                child: TextFormField(
                  controller: conferenceDTextCtrl,
                  decoration: InputDecoration(
                    labelText: "Conference ID",
                    prefixIcon: Icon(Icons.video_call_sharp),
                    border: OutlineInputBorder(),

                  ),

                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return VideoConferencePage(conferenceID: conferenceDTextCtrl.text);
                        }));
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.blueGrey.shade900)
                      ),
                      child: Text("Join"),

                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (cpntext) => Home()));

                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.blueGrey.shade900)
                      ),
                      child: Text("Home"),

                    ),
                  ),
                ],
              )

            ],
          ),
        ),
      ),

    );
  }
}


class VideoConferencePage extends StatelessWidget {
  final String conferenceID;

  const VideoConferencePage({
    Key? key,
    required this.conferenceID,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: ZegoUIKitPrebuiltVideoConference(
        appID: Utils.appID, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
        appSign: Utils.appSign, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
        userID: 'user_id',
        userName: 'TEAM 2024',
        conferenceID: conferenceID,
        config: ZegoUIKitPrebuiltVideoConferenceConfig(),
      ),

    );
  }
}






