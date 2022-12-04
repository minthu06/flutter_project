import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:shopping/service/Cart.dart';
import 'package:shopping/service/Product.dart';

class CartProvider extends ChangeNotifier {
  List<dynamic> list = [];
  List<dynamic> listProduct = [];
  void getList() async {
    String apiUrl = CartService.GetListItem;
    String apiProductUrl = ProductService.GetListProduct;

    var client = http.Client();
    var client2 = http.Client();
    var jsonCartString = await client.get(Uri.parse(apiUrl));
    var jsonProductString = await client2.get(Uri.parse(apiProductUrl));
    var jsonCartObject = jsonDecode(jsonCartString.body)["products"] as List;

    var jsonProductObject = jsonDecode(jsonProductString.body) as List;
    list = jsonCartObject.map((e) {
      var id = e['productId'];

      for (int i = 0; i < listProduct.length; i++) {
        var item = listProduct[i];

        if (item.id == id) {
          return item;
        }
      }
    }).toList();

    notifyListeners();
  }
}
