// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_10/screens/api_screen.dart';
import 'package:flutter_application_10/screens/profile_screen.dart';
import 'package:flutter_application_10/screens/public_profile_screen.dart';

// import 'package:flutter_application_10/screens/login.dart';
import 'package:flutter_application_10/screens/security_screen.dart';

class Setting extends StatelessWidget {
  // final FirebaseAuth _auth = FirebaseAuth.instance;

  // Future<void> _logout() async {
  //   try {
  //     await _auth.signOut();
  //   } catch (e) {}
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[100],
        title: Text(
          "Settings",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25, left: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextButton.icon(
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) {
                return ProfileScreen();
              }));
            },
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: Text('Profile',
                style: TextStyle(fontSize: 35, color: Colors.black)),
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) {
                return PublicProfileScreen();
              }));
            },
            icon: Icon(
              Icons.public,
              color: Colors.black,
              size: 24.0,
            ),
            label: Text('Public Profile',
                style: TextStyle(fontSize: 35, color: Colors.black)),
          ),
          // TextButton.icon(
          //   onPressed: () {},
          //   icon: Icon(
          //     Icons.group,
          //     color: Colors.black,
          //     size: 24.0,
          //   ),
          //   label: Text('Teams',
          //       style: TextStyle(fontSize: 35, color: Colors.black)),
          // ),
          TextButton.icon(
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) {
                return SecurityScreen();
              }));
            },
            icon: Icon(
              Icons.security,
              color: Colors.black,
              size: 24.0,
            ),
            label: Text('Security',
                style: TextStyle(fontSize: 35, color: Colors.black)),
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) {
                return ApiTokensScreen();
              }));
            },
            icon: Icon(
              Icons.api,
              color: Colors.black,
              size: 24.0,
            ),
            label: Text('API Tokens',
                style: TextStyle(fontSize: 35, color: Colors.black)),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.webhook,
              color: Colors.black,
              size: 24.0,
            ),
            label: Text('Webhooks',
                style: TextStyle(fontSize: 35, color: Colors.black)),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.logout,
              color: Colors.black,
              size: 24.0,
            ),
            label: Text('log out',
                style: TextStyle(fontSize: 35, color: Colors.black)),
          )
        ]),
      ),
    );
  }
}
