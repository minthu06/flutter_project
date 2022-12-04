import 'package:example/model/news_model.dart';
import 'package:example/provider/news_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:lipsum/lipsum.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {

      List<NewsModel> listTitle = [

        NewsModel(
          "",
          lipsum.createWord(numWords: 6),
          lipsum.createWord(numWords: 7),
          "https://www.youtube.com/supported_browsers?next_url=https:%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DANYUFisRrF8",
          "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png",
          lipsum.createWord(numWords: 7),
          "28 Jan 2020"
        )
      ];

  List<Tab> _tabList = [
    Tab(
      child: Text("Top"),
    ),
    Tab(
      child: Text("Popular"),
    ),
    Tab(
      child: Text("Trending"),
    ),
    Tab(
      child: Text("Editor Choice"),
    ),
    Tab(
      child: Text("Category"),
    ),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabList.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var newsProvider = Provider.of<NewsProvider>(context);
    newsProvider.getList();
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 110.0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
          backgroundColor: Color(0xFFFAFAFA),
          centerTitle: true,
          title: Text(
            "News App",
            style: TextStyle(color: Colors.black),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(30.0),
            child: TabBar(
              tabs: _tabList,
              indicatorColor: Colors.black,
              isScrollable: true,
              labelColor: Colors.black,
              controller: _tabController,
            ),
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                child: ListView(

                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(),
            ),
          ],
        ));
  }
}
