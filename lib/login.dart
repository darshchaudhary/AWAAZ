// ignore_for_file: prefer_const_constructors
import 'package:awaaz/joinmeeting.dart';
import 'package:awaaz/main.dart';
import 'package:awaaz/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'LOGIN',
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

  String email = '';
  String pass = '';

  void SetEmail(val) {
    setState(() {
      email = val;
    });
  }
  void SetPass(val) {
    setState(() {
      pass = val;
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
                        MaterialPageRoute(builder: (cpntext) => SignupPage()));
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
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 350,
              child: TextFormField(
                onChanged: (val) {
                  SetEmail(val);
                },
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return 'Please enter some text.';
                  }
                  return null;
              },

                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email ID',
                  hintText: 'Enter your email',
                  prefixIcon: Icon(
                    Icons.mail,
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
              width: 350,
              child: TextFormField(
                onChanged: (val) {
                  SetPass(val);
                },

                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password',
                    prefixIcon: Icon(
                      Icons.key,
                      color: Colors.blueGrey.shade900,
                    )

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
                  if (email.isEmpty || pass.isEmpty) {
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
                  'Login',
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







