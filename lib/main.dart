// ignore_for_file: prefer_const_constructors
import 'package:awaaz/learnMore.dart';
import 'package:awaaz/signup.dart';
import 'package:awaaz/verifypolitician.dart';
import 'package:flutter/material.dart';
import 'package:awaaz/meetingcontrols.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'AWAAZ',
            style: TextStyle(
                fontFamily: 'Georgia',
                fontSize: 25,
                color: Colors.white
            ),
          ),
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: SafeArea(
          child: Director(),
        ),
      ),


    );
  }
}

class Director extends StatefulWidget {
  const Director({super.key});

  @override
  State<Director> createState() => _DirectorState();
}

class _DirectorState extends State<Director> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 300,
                height: 75,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (cpntext) => VerifyPolitician()));

                    });
                  },
                  child: Text('POLITICIAN'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blueGrey.shade700),
                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                      )
                    )
                  ),
                ),
              ),
            ),
          ],
        ),

        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 300,
                height: 75,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (cpntext) => SignupPage()));
                    });
                  },
                  child: Text('PUBLIC'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blueGrey.shade700),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (cpntext) => LearnMore()));
            },
            child: Text(
                "Learn More",
              style: TextStyle(
                color: Colors.blueGrey.shade700
              ),
            )
        )

      ],
    );
  }
}

