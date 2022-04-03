import 'package:flutter/material.dart';
import 'package:hello_world/app_screens/home/action-screens/product-detail/product-detail.dart';
import 'package:hello_world/app_screens/home/tabs/feed/widgets/product_card.dart';

class LandingFeed extends StatelessWidget {
  final String sectionLabel;
  final List product;
  LandingFeed({required this.sectionLabel, required this.product});

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;

    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    sectionLabel,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        'See all',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      // Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 16,)
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: ListView.builder(
                  itemCount: product.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ProductCard(
                        productDetail: product[index],
                        press: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ViewProductDetail(
                                      productDescription: product[index],
                                    ))));
                  }),
              height: _size.height * 0.42,
            ),
          ],
        ));
  }
}
