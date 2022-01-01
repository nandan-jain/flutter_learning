import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Container(
              height: 350,
              width: 200,
              color: Colors.deepOrangeAccent,
              alignment: Alignment.center,
              child: Image.network(
                  'https://media.gq.com/photos/616f1e50af7badb1a03350cd/master/w_1280%2Cc_limit/Landing-Leathers-A-2-bomber-jacket.jpg')),
          // Container(
          //   height: 50,
          //   width: 50,
          //   color: Colors.indigoAccent,
          // )
        ],
      ),
    );
  }
}
