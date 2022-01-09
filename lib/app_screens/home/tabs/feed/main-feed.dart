import 'package:flutter/material.dart';
import 'package:hello_world/json/most_popular_json.dart';
import 'package:hello_world/json/new_collection_json.dart';

import 'widgets/categories.dart';
import 'widgets/landing_feed.dart';

class HomeInitial extends StatelessWidget {
  HomeInitial({Key? key}) : super(key: key);

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
