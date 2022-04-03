import 'package:flutter/material.dart';

class ProductPriceDescription extends StatelessWidget {
  final productTitle;
  final productPrice;
  final productRating;

  const ProductPriceDescription(
      {required this.productTitle,
      required this.productPrice,
      required this.productRating});

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(_size.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                productTitle,
                style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w400,
                    fontSize: _size.width * 0.06),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star_rate_rounded,
                    color: Colors.amber,
                    size: _size.width * 0.065,
                  ),
                  Text(
                    productRating.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: _size.width * 0.05),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: _size.height * 0.01,
          ),
          Text(
            '\$' + productPrice.toString(),
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: _size.width * 0.08),
          )
        ],
      ),
    );
  }
}
