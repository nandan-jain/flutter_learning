import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String productImg;
  const ProductImage({required this.productImg});

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height * 0.35,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: _size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(productImg), fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            top: _size.height * 0.02,
            right: _size.width * 0.04,
            child: Container(
                width: _size.width * 0.11,
                height: _size.height * 0.04,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white70),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(
                    Icons.favorite_border_rounded,
                    size: 25,
                  ),
                )),
          )
        ],
      ),
    );
  }
}

class ProductDescription extends StatelessWidget {
  final productTitle;
  final productPrice;
  final productRating;

  const ProductDescription(
      {required this.productTitle,
      required this.productPrice,
      required this.productRating});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            productTitle,
            style:
                TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$' + productPrice.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                width: 100,
              ),
              Icon(
                Icons.star_rate_rounded,
                color: Colors.amber,
                size: 20,
              ),
              Text(
                productRating.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final productDetail;
  final VoidCallback press;

  const ProductCard({required this.productDetail, required this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductImage(productImg: productDetail['img_url']),
          ProductDescription(
            productTitle: productDetail['title'],
            productPrice: productDetail['price'],
            productRating: productDetail['rating'],
          )
        ],
      ),
    );
  }
}
