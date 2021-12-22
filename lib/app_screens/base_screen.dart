import 'package:flutter/material.dart';
import 'package:hello_world/base_widgets/tabs_bottom_navigation_bar.dart';

class Welcomepage extends StatelessWidget {
  const Welcomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(170),
            child: Text('Welcome'),
          ),
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
    ));
  }
}

class HomeState extends StatefulWidget {
  const HomeState({Key? key}) : super(key: key);

  @override
  _HomeStateState createState() => _HomeStateState();
}

class _HomeStateState extends State<HomeState> {
  @override
  Widget build(BuildContext context) {
    return TabLayout();
  }
}
