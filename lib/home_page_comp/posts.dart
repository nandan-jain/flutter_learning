import 'package:flutter/material.dart';
import 'package:hello_world/home_page_comp/landing_feed.dart';

import 'package:hello_world/json/most_popular_json.dart';
import 'package:hello_world/json/new_collection_json.dart';

import 'categories.dart';

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
    Categories(),
    LandingFeed(
      sectionLabel: 'New Collection',
      product: new_collection_product_list,
    ),
    LandingFeed(
      sectionLabel: 'Most Popular',
      product: most_popular_product_list,
    ),
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
