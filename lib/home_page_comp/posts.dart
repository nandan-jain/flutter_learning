import 'package:flutter/material.dart';
import 'package:hello_world/home_page_comp/product_card.dart';

class CatgoryCircle extends StatelessWidget {
  final String categoryName;
  final String imageUrl;

  CatgoryCircle({required this.categoryName, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(4),
              child: Container(
                height: 90,
                width: 90,
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
  final String sectionLabel;
  final List categories = [
    CatgoryCircle(categoryName: 'Men', imageUrl: 'images/men.png'),
    CatgoryCircle(categoryName: 'Women', imageUrl: 'images/women.png'),
    CatgoryCircle(categoryName: 'Men', imageUrl: 'images/men.png'),
    CatgoryCircle(categoryName: 'Women', imageUrl: 'images/women.png'),
    CatgoryCircle(categoryName: 'Men', imageUrl: 'images/men.png'),
    CatgoryCircle(categoryName: 'Women', imageUrl: 'images/women.png'),
  ];
  Categories({required this.sectionLabel});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Container(
            height: 150,
            child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return categories[index];
                })));
  }
}

class NewCollection extends StatelessWidget {
  NewCollection({Key? key}) : super(key: key);
  final List products = ['1', '2', '3'];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Text(
              'New Collection',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Container(
              child: ListView.builder(
                  itemCount: products.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ProductCard();
                  }),
              height: 320,
            ),
          ],
        ));
  }
}

class MostPopular extends StatelessWidget {
  const MostPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Container(
          child: Text('MostPopular section'),
          height: 400,
          color: Colors.black12,
        ));
  }
}

class Posts extends StatelessWidget {
  Posts({Key? key}) : super(key: key);

  final List _feed = [
    Categories(
      sectionLabel: 'Categories',
    ),
    NewCollection(),
    MostPopular(),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView.builder(
                itemCount: _feed.length,
                itemBuilder: (context, index) {
                  return _feed[index];
                }))
      ],
    );
  }
}
