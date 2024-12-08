// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10/screens/Recovery_screen.dart';
import 'package:flutter_application_10/screens/otp_screen.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  bool clrButton = false;

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[100],
        appBar: AppBar(
          backgroundColor: Colors.green[100],
          elevation: 0,
          title: Text(
            "Forgot Passwrd",
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Plealse entar your emial addrss. You will receive alink to create or set a new password via email",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: emailController,
                onChanged: (val) {
                  if (val != "") {
                    setState(() {
                      clrButton = true;
                    });
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide()),
                  labelText: "Eamil",
                  suffix: InkWell(
                    onTap: () {
                      setState(() {
                        emailController..clear();
                      });
                    },
                    child: Icon(
                      CupertinoIcons.multiply,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RecoveryScreen()));
                },
                child: Text(
                  "Send code",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  maximumSize: Size.fromHeight(55),
                  backgroundColor: Colors.green[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "OR",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OTPScreen()));
                      },
                      child: Text(
                        "Verify Using Number",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ))
                ],
              ),
            ],
          ),
        ));
  }
}
