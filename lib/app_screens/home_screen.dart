import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  List productList = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future fetchData() async {
    http.Response response;
    response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode == 200) {
      setState(() {
        print(response.body);
        productList = jsonDecode(response.body);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: productList.isEmpty ? 0 : 4,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Center(
                child: Row(
                  children: <Widget>[
                    Card(
                        child: Container(
                      child: Text(productList[index]['title']),
                      padding: EdgeInsets.all(20),
                    ))
                  ],
                ),
              ),
            );
          }),
    );
  }
}

