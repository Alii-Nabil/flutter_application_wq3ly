// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecoveryScreen extends StatefulWidget {
  const RecoveryScreen({super.key});

  @override
  State<RecoveryScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<RecoveryScreen> {
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
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide()),
                    labelText: "Reset Code",
                    prefixIcon: Icon(Icons.numbers)),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide()),
                    labelText: "New Password",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide()),
                    labelText: "conferm Password",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  //  Navigator.push(context,
                  //           MaterialPageRoute(builder: (context) => RecoveryScreen()));
                },
                child: Text(
                  " Reset Password",
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
              )
            ],
          ),
        ));
  }
}
