import 'package:flutter/material.dart';
import 'package:hello_world/base_widgets/tabs_bottom_navigation_bar.dart';
import 'package:hello_world/onboarding_comp/welcome.dart';

class Welcomepage extends StatelessWidget {
  const Welcomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Column(
          children: [
            WelcomeImage(),
            Container(
                child: ElevatedButton(
              child: Text('Get started'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeState()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.orange),
            )),
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
