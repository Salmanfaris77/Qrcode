import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class Scanqrcode extends StatefulWidget {
  const Scanqrcode({super.key});

  @override
  State<Scanqrcode> createState() => _ScanqrcodeState();
}

class _ScanqrcodeState extends State<Scanqrcode> {
  String Qrrslt = "scanned data";
  Future<void> scanqr() async {
    try {
      final QrCode = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'cancel', true, ScanMode.QR);
      if (!mounted) return;
      setState(() {
        this.Qrrslt = QrCode.toString();
      });
    } on PlatformException {
      Qrrslt = "fail qr read";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("scanqr"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "$Qrrslt",
              style: TextStyle(color: Colors.blue),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed: scanqr, child: Text("Scan now"))
          ],
        ),
      ),
    );
  }
}
