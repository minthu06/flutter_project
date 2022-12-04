import 'dart:html';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:shopping/model/product_model.dart';
import 'package:shopping/provider/product_provider.dart';
import 'package:provider/provider.dart';
import 'package:shopping/category_model.dart';

class ProductListPage extends StatelessWidget {
  ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ProductProvider>(context);
    provider.getProducts();
    return GridView.count(
      padding: EdgeInsets.all(10),
      crossAxisCount: 3,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      childAspectRatio: .5,
      children: [
        ...provider.list.map(
          (e) {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Column(
                    children: [
                      Image(
                        image: NetworkImage(e.image ?? ""),
                        width: 200,
                      ),
                      Text(
                        e.title ?? "",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        e.price.toString() ?? "",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ).toList(),
      ],
    );
  }
}
