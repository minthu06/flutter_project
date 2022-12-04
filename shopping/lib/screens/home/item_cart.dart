import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:shopping/model/product_model.dart';
import 'package:shopping/provider/product_provider.dart';
import 'package:shopping/screens/details/detail_screen.dart';

class ItemCart extends StatelessWidget {
  final ProductModel item;
  ItemCart(this.item);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ProductProvider>(context);
    provider.getProducts();

    buildIcon(icon, color, bgColor) {
      return ClipOval(
        child: Material(
          color: bgColor, // Button color
          child: InkWell(
            // Splash color
            onTap: () {},
            child: SizedBox(
                width: 30,
                height: 30,
                child: Icon(
                  icon,
                  color: color,
                  size: 15,
                )),
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      item,
                    ),
                  ));
            }),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.all(20.0),
                      height: 180,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.network(item.image ?? "")),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Text(
                      item.title ?? "",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$" + "${item.price.toString() ?? ""}",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          buildIcon(
                              Icons.add_shopping_cart,
                              Color.fromARGB(255, 80, 80, 188),
                              Color(0xffdedeed)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
