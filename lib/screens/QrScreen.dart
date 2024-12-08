import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class QrScreen extends StatelessWidget {
  const QrScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[100],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: Column(
          children: [
            Text(
              "Enable Authenticator App",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "To enable two-factor authentication, scan the following QR code using your authenticator app.",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 25,
            ),
            BarcodeWidget(data: "", barcode: Barcode.qrCode()),
            SizedBox(
              height: 25,
            ),
            Text(
              "If your authenticator app does not support QR codes, you can use the following code instead:",
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
