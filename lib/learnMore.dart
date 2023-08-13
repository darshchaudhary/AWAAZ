// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:awaaz/main.dart';

void main() => runApp(LearnMore());

class LearnMore extends StatelessWidget {
  const LearnMore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              "ABOUT",
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: SafeArea(
          child: AboutUs(),
        )
      ),
    );
  }
}

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
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
          height: 20,
        ),

        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            'AWAAZ: AAPKI AUR SARKAR KI\n\nWe, a team from Jayshree Periwal International School, have created an app that modally represents the one stop solution to improve government information transparency.'
                ' This app allows people of the local region to view local government conferences and somewhat take part in them. People intending to join the conference will be verified through their Aadhar Card number.'
                ' This would help us make the conference available to view for the people of the same region as the local government. As the conference goes on, Either human or AI moderators can start/stop voting on certain topics '
                'that are being discussed. The general public won\'t have physical speaking rights in the conference, but will be able to communicate through the chat and voting. At the end of each conference, '
                'a transciption would be made available which would include everything that has been discussed. Moreover, AI can be used to summarize the meeting and output whether there was '
                'an overall positive or negative response from the public. On the whole, this would help the local government in their decision-making processes and also help them '
                'build up better public relations.',
            style: TextStyle(
                fontSize: 15
            ),
          ),
        ),
      ],

    );
  }
}

