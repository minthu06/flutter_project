import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  String urlImage =
      "https://images.unsplash.com/photo-1663340154077-dbfdd04ea6e8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello App",
          style: TextStyle(color: Colors.white, fontSize: 38),
        ),
        leading: Icon(
          Icons.menu,
          color: Colors.black45,
          size: 40,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Hello World!",
                style: TextStyle(fontSize: 30),
              ),
              Text(
                "Welcome",
                style: TextStyle(color: Colors.black87, fontSize: 25),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                  ),
                  Text(
                    "50 rating",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
              Image.network(urlImage),
              Image.asset("assets/images/NongNgod.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}
