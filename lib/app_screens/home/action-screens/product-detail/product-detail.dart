import 'package:flutter/material.dart';
import 'package:hello_world/app_screens/home/action-screens/product-detail/product-image.dart';

import 'product-description.dart';

class ViewProductDetail extends StatelessWidget {
  final productDescription;
  const ViewProductDetail({Key? key, this.productDescription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ProductDetailImage(
            imageUrl: productDescription['img_url'],
          ),
          ProductDetailDescription(),
        ],
      ),
    );
  }
}
