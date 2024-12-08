// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_10/screens/Recovery_screen.dart';
// import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

class OtpVerifyScreen extends StatefulWidget {
  const OtpVerifyScreen({super.key});

  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {
  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Theme.of(context).primaryColor),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  TextEditingController textEditingController =
      new TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[100],
        title: Text(
          "Enter OTP",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 50,
          ),
          child: Column(
            children: [
              Text(
                "Please Enter The OTP code thet we have sent you to the Number , Please check your number and enter here OTP to verify ",
              ),
              SizedBox(
                height: 50,
              ),
              // TextFieldPin(
              //     textController: textEditingController,
              //     autoFocus: false,
              //     codeLength: 4,
              //     alignment: MainAxisAlignment.center,
              //     defaultBoxSize: 50.0,
              //     margin: 10,
              //     selectedBoxSize: 46.0,
              //     textStyle: TextStyle(fontSize: 16),
              //     defaultDecoration: _pinPutDecoration.copyWith(
              //         border: Border.all(color: Colors.green)),
              //     selectedDecoration: _pinPutDecoration,
              //     onChange: (code) {
              //       setState(() {});
              //     }),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RecoveryScreen()));
                },
                child: Text(
                  "Verify",
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
            ],
          ),
        ),
      ),
    );
  }
}
