import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProductDetail extends StatelessWidget {
  final imageUrl;
  const ProductDetail({Key? key, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Stack(
          children: [
            Container(
              color: Colors.amber,
              width: _size.width,
              height: _size.height * 0.6,
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                fit: BoxFit.contain,
                placeholder: (context, url) => Center(
                  child: SizedBox(
                      height: 30,
                      width: 30,
                      child: CircularProgressIndicator()),
                ),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: _size.height * 0.02, right: _size.width * 0.06),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.ios_share_outlined,
                    size: _size.height * 0.035,
                  ),
                  SizedBox(width: _size.width * 0.03),
                  Icon(Icons.shopping_bag_outlined, size: _size.height * 0.035),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: _size.height * 0.02, left: _size.width * 0.03),
              child: GestureDetector(
                child: Icon(Icons.arrow_back, size: _size.height * 0.035),
                onTap: () => {Navigator.pop(context)},
              ),
            ),
          ],
        )
      ],
    );
  }
}
