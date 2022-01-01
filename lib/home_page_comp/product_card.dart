import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    var _homeimage =
        'https://assets.myntassets.com/f_webp,dpr_1.0,q_60,w_210,c_limit,fl_progressive/assets/images/15824634/2021/10/17/3c3fe8a3-ed1d-4903-9f50-a550384c5b8e1634474021813WWomenBlueThreadWorkKurta1.jpg';

    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: _size.width * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(_homeimage), fit: BoxFit.cover),
            ),
          ),
        ),
        Positioned(
          top: 20,
          right: 17,
          child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white.withOpacity(0.7)),
              child: Icon(
                Icons.favorite_outline,
                size: 28,
              )),
        )
      ],
    );
  }
}
