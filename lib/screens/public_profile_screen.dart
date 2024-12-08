// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10/shared/custom_textfield.dart';

class PublicProfileScreen extends StatefulWidget {
  @override
  State<PublicProfileScreen> createState() => _PublicProfileScreenState();
}

class _PublicProfileScreenState extends State<PublicProfileScreen> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[100],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Public Profile",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      "You can choose to enable or disable\n your profile for public view.",
                      style: TextStyle(
                        fontSize: 15,
                      )),
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
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.grey[800],
                height: 0.1,
                width: 300,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Public profile URL",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MyTextField(
                textInputTypeee: TextInputType.text,
                isPassword: false,
                hinttexttt: "",
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Bio",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                height: 200,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  decoration: InputDecoration(

                      // icon: Icon(
                      //   Icons.person,
                      //   color: Colors.purple[800],
                      // ),
                      hintText: "Your Email :",
                      border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.green[300]),
                      padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                    child: Text(
                      "   Update  ",
                      style: TextStyle(fontSize: 19, color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "My templates",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      "Show templates in your public\n profile for your audience to sign\n and get started quickly"),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.green[300]),
                      padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                    child: Text(
                      "Link template",
                      style: TextStyle(fontSize: 19, color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: double.infinity,
                color: Colors.green[200],
                child: Center(
                  child: Stack(
                    children: [
                      Text("No public profile templates found"),
                      TextButton(
                          onPressed: () {},
                          child: Text("Click here to get started")),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
