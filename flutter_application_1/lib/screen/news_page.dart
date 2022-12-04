import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/provider/news_api.dart';
import 'package:provider/provider.dart';

class NewsHomePage extends StatelessWidget {
  const NewsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var newsProvider = Provider.of<NewsApi>(context);
    newsProvider.getList();
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ...newsProvider.list.map((e) {
            return SingleChildScrollView(
                scrollDirection: Axis.vertical, child: Text(e.title ?? ""));
          })
        ],
      ),
    );
  }
}
