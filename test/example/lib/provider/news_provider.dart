import 'dart:convert';
import 'package:example/model/news_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class NewsProvider extends ChangeNotifier {
  List<NewsModel> list = [];
  void getList() async {
    // get data form web api
    var url = 'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=5abfb0c37dff41898d1b0f1058f2e49d';
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
