import 'dart:math';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Hastag extends StatelessWidget {
  Hastag({super.key});
  List<String> hasList = [
    'Tất cả',
    'Âm nhạc',
    'Trò chơi',
    'Trực tiếp',
    'Hoạt hình',
    'Danh sách kết hợp',
    'Bóng đá',
    'Nông nghiệp'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...hasList.map((e) {
            return Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color(Random().nextInt(0xffffffff)),
                  borderRadius: BorderRadius.circular(30)),
              child: Text(e,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(Random().nextInt(0xffffffff)),
                  )),
            );
          }).toList()
        ],
      ),
    );
  }
}
