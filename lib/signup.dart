// ignore_for_file: prefer_const_constructors
import 'package:awaaz/joinmeeting.dart';
import 'package:awaaz/login.dart';
import 'package:awaaz/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SignupPage());
}

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'SIGN UP',
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
  String region = '';
  String aadhar = '';
  int? password;

  get eid => null;

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
  void SetRegion(val) {
    setState(() {
      region = val;
    });
  }
  void SetAadhar(val) {
    setState(() {
      aadhar = val;
    });
  }

  String? validateCheck(val) {
    if (val == 0 || val!.isEmpty) {
      return 'Please enter some text.';
    }
    return null;
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
          height: 20,
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
                key: eid,
                validator: (val) {
                  validateCheck(val);
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
              width: 350,
              child: TextFormField(
                onChanged: (val) {
                  SetRegion(val);
                },

                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Region',
                    hintText: 'Enter district name',
                    prefixIcon: Icon(
                      Icons.place_sharp,
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
              width: 350,
              child: TextFormField(
                onChanged: (val) {
                  SetAadhar(val);
                },

                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Aadhar Number',
                    hintText: 'Enter 12 digits',
                    prefixIcon: Icon(
                      Icons.perm_identity_sharp,
                      color: Colors.blueGrey.shade900,
                    )
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 120,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  if (email.isEmpty || pass.isEmpty || region.isEmpty || aadhar.isEmpty) {
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
                  'Sign Up',
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
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Already have an account?'),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (cpntext) => LoginPage()));
              },
              child: Text(
                'Login',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'Georgia'
                ),
              ),
            )
          ],
        )
      ],

    );
  }
}







