import 'dart:async';
import 'package:flutter/material.dart';
import 'onboarding/welcome-page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => Welcomepage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[850],
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              Image.asset(
                'images/splash.png',
              ),
              Text(
                'Shop Fashion',
                style: TextStyle(color: Colors.orange[300], fontSize: 30),
              ),
              CircularProgressIndicator(
                color: Colors.orange,
              ),
            ])));
  }
}
