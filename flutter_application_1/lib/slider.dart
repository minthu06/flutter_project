import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  SliderWidget({super.key});
  List<String> list = [
    'assets/images/NongNgod.jpg',
    'assets/images/NongNgod.jpg',
    'assets/images/NongNgod.jpg',
    'assets/images/NongNgod.jpg',
    'assets/images/NongNgod.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 300,
        child: Row(
          children: [
            // for (int i = 0; i < list.length; i++) Image.asset(list[i]),
            ...list.map((e) {
              return Container(
                  margin: EdgeInsets.only(right: 10),
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(e), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(30),
                  ));
            }).toList()
          ],
        ),
      ),
    );
  }
}
