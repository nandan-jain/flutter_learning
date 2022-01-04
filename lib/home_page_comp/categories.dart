import 'package:flutter/material.dart';

class CatgoryCircle extends StatelessWidget {
  final String categoryName;
  final String imageUrl;
  CatgoryCircle({required this.categoryName, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Padding(
        padding: EdgeInsets.all(_size.height * 0.005),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(_size.height * 0.005),
              child: Container(
                height: _size.height * 0.12,
                width: _size.width * 0.25,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(imageUrl))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: _size.height * 0.009),
              child: Text(categoryName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
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
        padding: EdgeInsets.symmetric(vertical: _size.height * 0.01 ),
        child: Container(
            height: _size.height * 0.18,
            child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return categories[index];
                })));
  }
}
