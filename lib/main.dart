import 'package:flutter/material.dart';
import 'package:workapp/homescreen/home.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Qr code scanner",
      debugShowCheckedModeBanner: false,
      home: Myhomepage(),
    );
  }
}
