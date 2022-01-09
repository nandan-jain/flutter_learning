import 'package:flutter/material.dart';
import 'package:hello_world/app_screens/onboarding/widgets/welcome_image.dart';
import 'widgets/welcome_button.dart';
import 'widgets/welcome_text.dart';

class Welcomepage extends StatelessWidget {
  const Welcomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[850],
        body: Column(
          children: <Widget>[
            Column(
              children: [WelcomeImage(), WelcomeText(), WelcomeButton()],
            ),
          ],
        ));
  }
}
