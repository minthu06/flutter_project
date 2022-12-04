import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/lophocphan_model.dart';

class stackWidget extends StatelessWidget {
  stackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: (Colors.white),
          leading: Icon(
            Icons.menu,
            color: Colors.black45,
            size: 40,
          ),
          title: Text(
            "Google Lớp học",
            style: TextStyle(
              color: Color.fromARGB(255, 152, 21, 21),
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          child: Icon(Icons.add),
        ),
        body: Container(
          margin: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ...ls.map((e) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 10, right: 0, top: 5, bottom: 5),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(e.hinhNen ?? ""),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      e.tenLhp ?? "",
                                      overflow: TextOverflow.fade,
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  IconButton(
                                      icon: Icon(Icons.more_vert),
                                      color: Colors.white,
                                      onPressed: () {})
                                ],
                              ),
                              Text(
                                e.maLhp ?? "",
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(height: 20),
                              Text("${e.soluongSV ?? 0} học viên"),
                            ],
                          ),
                        ),
                        Container(
                          height: 200,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.red,
                          ),
                          child: Center(
                            child: Text("Xóa",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList()
              ],
            ),
          ),
        ));
  }
}
