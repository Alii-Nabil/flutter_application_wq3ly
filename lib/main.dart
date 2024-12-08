// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_10/screens/documents_screen.dart';
// import 'package:flutter_application_10/screens/login.dart';
// import 'package:flutter_application_10/screens/sing_up.dart';
import 'package:flutter_application_10/screens/templates_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: DocumentsScreen(),
    );
  }
}
