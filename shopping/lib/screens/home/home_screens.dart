import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopping/screens/details/cart.dart';
import 'package:shopping/screens/home/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.greenAccent,
      leading: BackButton(
        color: Colors.white,
        onPressed: () {
          // Do something.
        },
      ),
      title: Text(
        "Trang chủ",
        style: TextStyle(color: Colors.white),
        textAlign: TextAlign.center,
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
            // do something Navigator.push(
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Cart()));
          },
        ),
      ],
    );
  }
}
