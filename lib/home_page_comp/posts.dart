import 'package:flutter/material.dart';

class CatgoryCircle extends StatelessWidget {
  const CatgoryCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(4),
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Colors.white70),
        ));
  }
}

class Categories extends StatelessWidget {
  final String sectionLabel;
  final List categories = [
    CatgoryCircle(),
    CatgoryCircle(),
    CatgoryCircle(),
    CatgoryCircle(),
    CatgoryCircle()
  ];
  Categories({required this.sectionLabel});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Container(
            height: 125,
            color: Colors.black12,
            child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return categories[index];
                })));
  }
}

class NewCollection extends StatelessWidget {
  const NewCollection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Container(
          child: Text('NewCollection section'),
          height: 400,
          color: Colors.black12,
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
