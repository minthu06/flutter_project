import 'dart:convert';

import 'package:example/model/news_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final endPointUrl = "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=5abfb0c37dff41898d1b0f1058f2e49d";

  Future<List<NewsModel>> getNews() async {
    http.Response res = await get(endPointUrl);

    if (res.statusCode == 200){
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];
    } else {
      throw ("Can't get the Articles");
    }

  }
}