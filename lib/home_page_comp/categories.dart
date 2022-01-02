import 'package:flutter/material.dart';

class CatgoryCircle extends StatelessWidget {
  final String categoryName;
  final String imageUrl;
  CatgoryCircle({required this.categoryName, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(4),
              child: Container(
                height: _size.height * 0.12,
                width: _size.width * 0.25,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(imageUrl))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text(categoryName),
            )
          ],
        ));
  }
}

class Categories extends StatelessWidget {
  final List categories = [
    CatgoryCircle(categoryName: 'Men', imageUrl: 'images/men.png'),
    CatgoryCircle(categoryName: 'Women', imageUrl: 'images/women.png'),
    CatgoryCircle(categoryName: 'Men', imageUrl: 'images/men.png'),
    CatgoryCircle(categoryName: 'Women', imageUrl: 'images/women.png'),
    CatgoryCircle(categoryName: 'Men', imageUrl: 'images/men.png'),
    CatgoryCircle(categoryName: 'Women', imageUrl: 'images/women.png'),
  ];

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;

    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Container(
            height: _size.height * 0.17,
            child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return categories[index];
                })));
  }
}
