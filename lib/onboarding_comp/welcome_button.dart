import 'package:flutter/material.dart';
import 'package:hello_world/app_screens/base_screen.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(top: _size.height * 0.05),
      child: Container(
          width: _size.width * 0.77,
          height: _size.height * 0.06,
          child: ElevatedButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Get started',style: TextStyle(
                  fontSize: _size.width * 0.05
                ),),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: _size.width * 0.08,
                )
              ],
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeState()));
            },
            style: ElevatedButton.styleFrom(primary: Colors.orange),
          )),
    );
  }
}
