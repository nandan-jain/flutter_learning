import 'package:flutter/material.dart';
import 'package:hello_world/base_widgets/tabs_bottom_navigation_bar.dart';
import 'package:hello_world/onboarding_comp/welcome_button.dart';
import 'package:hello_world/onboarding_comp/welcome_image.dart';
import 'package:hello_world/onboarding_comp/welcome_text.dart';

class Welcomepage extends StatelessWidget {
  const Welcomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
        body: Column(
      children: <Widget>[
        Column(
          children: [
            WelcomeImage(),
            WelcomeText(),
            GetStarted()

          ],
        ),
      ],
    ));
  }
}

class HomeState extends StatelessWidget {
  const HomeState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabLayout();
  }
}
