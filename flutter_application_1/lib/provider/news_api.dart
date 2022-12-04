import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/model/news_model.dart';
import 'package:http/http.dart' as http;

class NewsApi extends ChangeNotifier {
  List<NewsModel> list = [];
  void getList() async {
    // get data form web api
    var url = 'https://fakestoreapi.com/products';
    var client = http.Client();
    var rs = await client.get(Uri.parse(url));
    var jsonString = rs.body;
    var jsonObject = jsonDecode(jsonString) as List;
    list = jsonObject.map((e) {
      return NewsModel.fromJson(e);
    }).toList();

    notifyListeners();
  }
}
