import 'package:flutter/material.dart';
import 'app_screens/base_screen.dart';
import 'app_screens/splash_screen.dart';

void main() {
  runApp(Homepage());
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ecommerce App",
      home: SplashScreen(),
      theme: ThemeData(primaryColor: Colors.black, accentColor: Colors.pink),
      debugShowCheckedModeBanner: false,
    );
  }
}
