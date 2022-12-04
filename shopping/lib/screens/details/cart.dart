import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:shopping/provider/Cart.dart';
import 'package:shopping/provider/product_provider.dart';
import 'package:shopping/screens/home/item_cart.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ProductProvider>(context);
    provider.getProducts();
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "CART",
            textAlign: TextAlign.center,
          ),
          primary: false,
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          backgroundColor: Colors.blue[800],
          elevation: 0),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          ...provider.list.map(
            (e) {
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image(
                                image: NetworkImage(e.image ?? ""),
                                height: 100,
                                width: 200,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  e.title ?? "",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\$ ${e.price.toString() ?? ""}",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.add_circle),
                                      color: Colors.green,
                                    ),
                                    Text("1"),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.remove_circle),
                                        color: Colors.red)
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                    onPressed: (() {}),
                                    child: const Text('Check out'))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ).toList(),
        ],
      ),
    );
  }
}
