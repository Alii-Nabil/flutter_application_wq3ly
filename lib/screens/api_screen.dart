// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_10/shared/custom_textfield.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_10/shared/custom_textfield.dart';

class ApiTokensScreen extends StatefulWidget {
  const ApiTokensScreen({super.key});

  @override
  State<ApiTokensScreen> createState() => _ApiTokensScreenState();
}

class _ApiTokensScreenState extends State<ApiTokensScreen> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[100],
        title: Text(
          "API Tokens",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "API Tokens",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "On this page, you can create new API tokens and manage the existing ones.",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
              Row(
                children: [
                  Text(
                    "Also see our",
                    style: TextStyle(fontSize: 15),
                  ),
                  TextButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => ForgotScreen()));
                      },
                      child: Text(
                        "Documentation.",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.black,
                height: 0.1,
                width: 300,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Token name",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              MyTextField(
                textInputTypeee: TextInputType.text,
                isPassword: false,
                hinttexttt: "",
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Please enter a meaningful name for your token. This will help you identify it later.",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Token expiration date",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(8)),
                // color: Colors.green[150]),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Text("Choose..."),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Never expire",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[600],
                ),
              ),
              Switch(
                // This bool value toggles the switch.
                value: light,
                activeColor: Colors.green,
                onChanged: (bool value) {
                  // This is called when the user toggles the switch.
                  setState(() {
                    light = value;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green[300]),
                  padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                child: Text(
                  "   Create token  ",
                  style: TextStyle(fontSize: 19, color: Colors.black),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Your existing tokens",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Your tokens will be shown here once you create them",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
