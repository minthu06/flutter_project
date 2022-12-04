import 'dart:html';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/product_model.dart';
import 'package:flutter_application_1/provider/product_provider.dart';
import 'package:provider/provider.dart';

class ProductListPage extends StatelessWidget {
  ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ProductProvider>(context);
    provider.getProducts();
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ...provider.list.map((e) {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Text(
                    e.title ?? "",
                    style: TextStyle(fontSize: 20),
                  ),
                  Image(
                    image: NetworkImage(e.image ?? ""),
                    width: 200,
                  ),
                  Text(
                    e.category ?? "",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    e.description ?? "",
                    style: TextStyle(fontSize: 20),
                  ),
                  // Text(
                  //   e.price ?? 0,
                  //   style: TextStyle(fontSize: 30),
                  // ),
                ],
              ),
            );
          })
        ],
      ),
    );
  }
}
