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
                    'https://assets.myntassets.com/f_webp,dpr_1.0,q_60,w_210,c_limit,fl_progressive/assets/images/14360884/2021/6/10/04f6b962-fa13-417e-8ee8-320069bfb2721623312059107WomensSwissDotPolySchiffonStraightDressMustardDressSareeBlou1.jpg',
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
                    'https://assets.myntassets.com/f_webp,dpr_1.0,q_60,w_210,c_limit,fl_progressive/assets/images/15151962/2021/11/8/d00908e5-d6f2-4683-9c9f-1a86713a19da1636350076052-Calvin-Klein-Jeans-Men-Tshirts-9921636350075444-1.jpg',
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
