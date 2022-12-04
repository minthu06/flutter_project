import 'package:flutter/material.dart';
import 'package:flutter_application_1/hastag.dart';
import 'package:flutter_application_1/lophocphan_model.dart';
import 'package:flutter_application_1/slider.dart';

class HD extends StatelessWidget {
  HD({Key? key}) : super(key: key);
  String urlImage =
      "https://images.unsplash.com/photo-1663341333659-5c05eaf30db4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1NXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60";
  String content =
      "Em lỡ thích một bạn nam học trường NN do đi học nnkc mà quen. Nhìn bạn khá đẹp trai cao và hiền, cười dth nữa. Thích bạn cũng được gần 1 năm r, do hai người cũng kb facebook này kia nên em cũng hay theo dõi bạn ấy dù khá ít được gặp mặt. Nhưng một ngày đẹp trời em biết bạn ấy thuộc giới LGBT hiuhiu buồn quá mn ơi. Tại sao giờ em mới biết, v suốt thời gian qua em là con ngốc à. huhu. Ai chỉ em cách thoát khỏi hình bóng một người nhanh nhanh với chớ giờ em vẫn không thể … Xem thêm";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Hastag(),
          SliderWidget(),
          //blockImage(context),
          blockTitle(context),
          blockButton(context),
          blockDescription(context),
        ],
      ),
    );
  }

  blockImage(BuildContext context) {
    return Image.network(urlImage);
  }

  blockTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "Truong ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Text(
                "Truong ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              )
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.red,
              ),
              Text(
                "41",
                style: TextStyle(fontSize: 20),
              )
            ],
          )
        ],
      ),
    );
  }

  blockButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        button("Call", Icons.phone),
        button("Route", Icons.near_me),
        button("Share", Icons.share),
      ],
    );
  }

  button(String title, IconData iconData) {
    return Column(
      children: [
        Icon(
          iconData,
          color: Colors.blueAccent,
        ),
        Text(
          title,
          style: TextStyle(color: Colors.blueAccent),
        )
      ],
    );
  }

  blockDescription(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Text(
        content,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
