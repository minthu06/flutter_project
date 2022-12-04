import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/category.dart';
import 'package:shopping/productlist_page.dart';
import 'package:shopping/provider/product_provider.dart';
import 'package:shopping/screens/details/cart.dart';
import 'package:shopping/screens/home/body.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text('My Personal Journal');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            // Do something.
          },
        ),
        title: Text(
          "Trang chủ",
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          IconButton(
            icon: customIcon,
            onPressed: () {
              setState(() {
                if (customIcon.icon == Icons.search) {
                  // Perform set of instructions.
                } else {
                  customIcon = const Icon(Icons.search);
                  customSearchBar = const Text('My Personal Journal');
                }
              });
              // do something
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cart()));
              // do something
            },
          ),
        ],
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
