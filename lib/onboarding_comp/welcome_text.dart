import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;

    return Column(
      children: [
        Text(
          'WELCOME',
          style:
              TextStyle(color: Colors.amber[50], fontSize: _size.width * 0.13),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(_size.width * 0.13, _size.height * 0.01, _size.width * 0.13, _size.height * 0.03),
          child: Text(
            'Explore Our Products and order for yourself a good one which will enhance your lifestyle',
              textAlign: TextAlign.center,
            style:
                TextStyle(color: Colors.amber[50],fontSize: _size.width * 0.05 ),
          ),
        ),
      ],
    );
  }
}
