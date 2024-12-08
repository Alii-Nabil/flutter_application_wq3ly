// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'dart:io';

// import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10/screens/templates_screen.dart';
// import 'package:open_file/open_file.dart';

class NewTemplates extends StatelessWidget {
  const NewTemplates({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green[100],
        body: Column(
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                "New Templates",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
            SizedBox(
              height: 15,
            ),
            Text(
              "  Templates allow you to quickly generate documents \n  with pre-filled recipients and fields",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                // var file = await FilePicker.platform.pickFiles();

//                 if (result != null) {
//                   File file = File(result.files.single.path!);
//                 } else {
// //   // User canceled the picker
//                 }
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Upload Template Document",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Drag & drop your PDF here",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.green[50],
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green,
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ]),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green[200]),
                padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
              ),
              child: Text(
                " Close ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );

    // void openFile(PlatformFile file) {
    //   OpenFile.open(file.path!);
    // }
  }
}
