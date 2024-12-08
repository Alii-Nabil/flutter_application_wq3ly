// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_10/screens/forgot_screen.dart';
import 'package:flutter_application_10/screens/sing_up.dart';
import 'package:flutter_application_10/shared/custom_textfield.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(33.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyTextField(
                textInputTypeee: TextInputType.emailAddress,
                isPassword: false,
                hinttexttt: "Enter Your Email : ",
              ),
              const SizedBox(
                height: 33,
              ),
              MyTextField(
                textInputTypeee: TextInputType.text,
                isPassword: true,
                hinttexttt: "Enter Your Password : ",
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotScreen()));
                    },
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    )),
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green[300]),
                  padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
                ),
                child: Text(
                  "Sing Up",
                  style: TextStyle(fontSize: 19, color: Colors.black),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Do not have an account?",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SingUp()));
                      },
                      child: Text(
                        "Sing In",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
