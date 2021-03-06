import 'package:flutter/material.dart';
import 'app_screens/onboarding/welcome-page.dart';
//import 'app_screens/splash_screen.dart';

void main() {
  runApp(Homepage());
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ecommerce App",
      home: Welcomepage(),
      theme: ThemeData(primaryColor: Colors.white, accentColor: Colors.black38),
      debugShowCheckedModeBanner: false,
    );
  }
}
