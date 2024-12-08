// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10/screens/QrScreen.dart';

class SecurityScreen extends StatelessWidget {
  const SecurityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[100],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Security",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Here you can manage your password and security setings.",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              color: const Color.fromARGB(255, 216, 236, 216),
              height: 200,
              width: 400,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Text(
                      "Tow factor authentication",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Add an authenticator to Serve as a secondary\nauthentication medthod for signing documents.",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(
                          context,
                        ).push(MaterialPageRoute(builder: (context) {
                          return QrScreen();
                        }));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green[200]),
                        padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                      ),
                      child: Text(
                        "    Enable 2FA    ",
                        style: TextStyle(fontSize: 19, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              color: const Color.fromARGB(255, 216, 236, 216),
              height: 200,
              width: 400,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Text(
                      "Recent activity",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "View all recent security activity related to your account.",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green[200]),
                        padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                      ),
                      child: Text(
                        "    View activity   ",
                        style: TextStyle(fontSize: 19, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
