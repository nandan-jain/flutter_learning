import 'package:flutter/material.dart';
import 'package:hello_world/app_screens/home/action-screens/product-detail/components/product-price.dart';

class ProductDetailDescription extends StatelessWidget {
  const ProductDetailDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
            height: _size.height * 0.13,
            color: Colors.white,
            child: ProductPriceDescription(
                productTitle: 'Black Solid Padded Jacket', productPrice: 10, productRating: 3.5)),
        Container(
          height: _size.height * 0.16,
          color: Colors.blueGrey,
        ),
        Container(
          height: _size.height * 0.11,
          color: Colors.amber,
        ),
      ],
    );
  }
}
