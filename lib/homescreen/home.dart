import 'package:flutter/material.dart';
import 'package:workapp/Genaretqrcode/genareteqrcode.dart';
import 'package:workapp/Scanqrcode/scanqrcode.dart';

class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Qr code"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Scanqrcode(),
                      ),
                    );
                  });
                },
                child: Text("scan qr")),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Genarateqrcode(),
                      ),
                    );
                  });
                },
                child: Text("Genarate Qr code"))
          ],
        ),
      ),
    );
  }
}
