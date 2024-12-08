// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

// import 'dart:io';

// import 'package:dio/dio.dart';
// import 'package:file_picker/file_picker.dart';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10/screens/setting.dart';
import 'package:flutter_application_10/screens/teams_scren.dart';
import 'package:flutter_application_10/screens/templates_screen.dart';

// import 'package:flutter_application_10/widget/pdf.dart';
// import 'package:syncfusion_flutter_pdf/pdf.dart';

class DocumentsScreen extends StatefulWidget {
  @override
  State<DocumentsScreen> createState() => _DocumentsScreenState();
}

class _DocumentsScreenState extends State<DocumentsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
                size: 30,
              ),
            )
          ],
          backgroundColor: Colors.green[100],
          title: Center(
            child: Text(
              "wq3ly",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.green[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/Ladies Bag.png"),
                          fit: BoxFit.cover),
                    ),
                    accountName: Text("Naaaaa ",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        )),
                    accountEmail: Text("aaaaaaa@yahoo.com"),
                    currentAccountPictureSize: Size.square(85),
                    currentAccountPicture: CircleAvatar(
                        radius: 55,
                        backgroundImage: AssetImage("assets/Ladies Bag.png")),
                  ),
                  ListTile(
                      title: Text(
                        "Documents",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(
                          context,
                        ).push(MaterialPageRoute(builder: (context) {
                          return DocumentsScreen();
                        }));
                      }),
                  ListTile(
                      title: Text(
                        "Templates",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(
                          context,
                        ).push(MaterialPageRoute(builder: (context) {
                          return TemplatesScreen();
                        }));
                      }),
                  ListTile(
                      title: Text(
                        "Teams",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(
                          context,
                        ).push(MaterialPageRoute(builder: (context) {
                          return TeamsScren();
                        }));
                      }),
                  ListTile(
                    title: Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(
                        context,
                      ).push(MaterialPageRoute(builder: (context) {
                        return Setting();
                      }));
                    },
                  ),
                  ListTile(
                    title: Text(
                      "Sing Out",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 12),
                child: Text(
                    "© 2024 WQ3LY, Product by Healiot LLc. \n All rights reserved.",
                    style: TextStyle(fontSize: 16)),
              )
            ],
          ),
        ),
        backgroundColor: Colors.green[100],
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green[50],
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.green,
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            height: 45,
                            width: 150,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search her.....",
                              ),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.search,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
//FilePickerResult?
//             final result = await FilePicker.platform.pickFiles();

//             if (result != null) {
//               File file = File(result.files.single.path!);
//             } else {
// //   // User canceled the picker
//             }
          },
          backgroundColor: Colors.green[200],
          child: Icon(
            Icons.add,
            size: 30,
          ),
        ),
      ),
    );
  }

//   void openFile(PlatformFile file) {
//     OpenFile.open(file.path!);
//   }
}
