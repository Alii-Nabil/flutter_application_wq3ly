import 'package:flutter/material.dart';
import 'package:flutter_application_10/shared/custom_textfield.dart';
// import 'package:flutter_signature_pad/flutter_signature_pad.dart';
import 'package:signature/signature.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  SignatureController controller = SignatureController();
  //  penStrokeWidthy: 3,
  //  pencolor : Colors.red,
  //  exportBacgroundColor: Colors.yellowAccent,
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[100],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Profile",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              Text(
                "Here you can edit your personal details.",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
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
                "Avatar",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey[300],
                    ),
                    child: Center(
                        child: Text(
                      "AN",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[500]),
                    )),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.grey[300]),
                      padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                    ),
                    child: Text(
                      "Upload Avatar",
                      style: TextStyle(fontSize: 19, color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Full Name",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
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
                "Email",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Text("Choose..."),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Signature",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Signature(
                controller: controller,
                width: 350,
                height: 200,
                backgroundColor: Colors.grey[300]!,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        controller.clear();
                      },
                      icon: Icon(Icons.arrow_circle_left_sharp)),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.green[300]),
                      padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                    ),
                    child: Text(
                      " Update Profile",
                      style: TextStyle(fontSize: 19, color: Colors.black),
                    ),
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
                "Delete Account",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Delete your account and all its contents, including completed documents. This action is irreversible and will cancel your subscription, so proceed with caution",
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red[300]),
                    padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                  ),
                  child: Text(
                    "Delete Account",
                    style: TextStyle(fontSize: 19, color: Colors.black),
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
