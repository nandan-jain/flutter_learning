import 'package:flutter/material.dart';

class MostPopular extends StatelessWidget {
  const MostPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Container(
          child: Text('MostPopular section'),
          height: 400,
          color: Colors.black12,
        ));
  }
}
