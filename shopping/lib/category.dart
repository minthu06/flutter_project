import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:shopping/provider/product_provider.dart';
import 'package:provider/provider.dart';
import 'package:shopping/category_model.dart';

class category extends StatefulWidget {
  category({Key? key}) : super(key: key);
  @override
  State<category> createState() => _CategoryState();
}

class _CategoryState extends State<category> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: ls.length,
            itemBuilder: (context, index) => buildCategory(index)),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "${ls.elementAt(index).category}",
            style: TextStyle(
              fontSize: 20,
              fontWeight:
                  selectIndex == index ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ]),
      ),
    );
  }
}

//  ...provider.list.map(
//             (e) {
//               return Container(
//                 margin: EdgeInsets.all(10),
//                 padding: EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                     color: Colors.black12,
//                     borderRadius: BorderRadius.circular(30)),
//                 child: Text(
//                   e.category ?? "",
//                   style: TextStyle(fontSize: 20),
//                 ),
//               );
//             },
//           ).toList()