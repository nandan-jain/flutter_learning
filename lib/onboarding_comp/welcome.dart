import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;

    return Container(
      height: _size.height * 0.6,
      width: _size.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: _size.height * 0.12,
            left: _size.width * 0.05,
            child: Container(
              height: _size.height * 0.28,
              width: _size.width * 0.45,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: CachedNetworkImage(
                imageUrl:
                    'https://assets.myntassets.com/f_webp,dpr_1.0,q_60,w_210,c_limit,fl_progressive/assets/images/productimage/2021/4/16/278d3b27-e719-433e-bc17-ad254429641b1618577529521-1.jpg',
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
          ),
          Positioned(
            top: _size.height * 0.2,
            left: _size.width * 0.4,
            child: Container(
              height: _size.height * 0.3,
              width: _size.width * 0.5,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: CachedNetworkImage(
                imageUrl:
                    'https://assets.myntassets.com/f_webp,dpr_1.0,q_60,w_210,c_limit,fl_progressive/assets/images/1320997/2016/7/19/11468929336885-WROGN-Black-Printed-Slim-Fit-T-shirt-4071468929335948-2.jpg',
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
