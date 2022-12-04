import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:shopping/model/product_model.dart';
import 'package:shopping/provider/product_provider.dart';
import 'package:shopping/screens/details/cart.dart';
import 'package:shopping/screens/details/detail_screen.dart';

class DetailsScreen extends StatelessWidget {
  final ProductModel item;
  DetailsScreen(this.item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            width: 200,
                            height: 200,
                            padding: EdgeInsets.all(20.0),
                            // height: 200,
                            // width: 160,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Image.network(item.image ?? "")),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(bottom: 10, top: 10),
                              width: 300,
                              child: Text(
                                item.title ?? "",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              "\$${item.price}",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ]),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                item.description ?? "",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                ),
                onPressed: (() {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Cart()));
                }),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Text('Thêm vào giỏ hàng',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                ),
              )
            ],
          )),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text("product details"),
      leading: BackButton(
        color: Colors.white,
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          onPressed: () {
            // do something
          },
        ),
        IconButton(
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Cart()));
          },
        ),
        SizedBox(width: 10.0)
      ],
    );
  }
}
