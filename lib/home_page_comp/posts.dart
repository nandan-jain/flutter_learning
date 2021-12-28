import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Container(
          child: Text('categories section'),
          height: 125,
          color: Colors.black12,
        ));
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
  const Posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [       
           Categories(),NewCollection(), MostPopular(),
      ],
    );
  }
}
