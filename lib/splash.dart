import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:whatsapp_ui_flutter/home.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    });
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.width * 0.4,
          child: Lottie.asset('assets/whatsapp.json', fit: BoxFit.contain),
        ),
      ),
    );
  }
}
