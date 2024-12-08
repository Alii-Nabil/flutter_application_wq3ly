import 'package:flutter/material.dart';
import 'package:flutter_application_10/shared/custom_textfield.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[200],
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              MyTextField(
                textInputTypeee: TextInputType.text,
                isPassword: false,
                hinttexttt: "Enter Your Name : ",
              ),
              SizedBox(
                height: 25,
              ),
              MyTextField(
                textInputTypeee: TextInputType.emailAddress,
                isPassword: false,
                hinttexttt: "Enter Your Email: ",
              ),
              SizedBox(
                height: 25,
              ),
              MyTextField(
                textInputTypeee: TextInputType.text,
                isPassword: true,
                hinttexttt: "Enter Your Password : ",
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
                  style: TextStyle(fontSize: 19),
                ),
              ),
            ]),
          ),
        ));
  }
}
