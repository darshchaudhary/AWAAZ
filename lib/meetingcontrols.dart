// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:awaaz/main.dart';
import 'package:zego_uikit_prebuilt_video_conference/zego_uikit_prebuilt_video_conference.dart';

void main() => runApp(MeetingControls());

class MeetingControls extends StatelessWidget {
  const MeetingControls({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'MEETING CONTROLS',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: SafeArea(
          child: Controls(),
        ),
      ),
    );
  }
}

class Controls extends StatefulWidget {
  const Controls({super.key});

  @override
  State<Controls> createState() => _ControlsState();
}

class _ControlsState extends State<Controls> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (cpntext) => Home()));
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
    );
  }
}

