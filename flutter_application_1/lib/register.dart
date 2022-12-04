import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/stack.dart';

class register extends StatelessWidget {
  register({super.key});
  var number = TextEditingController();
  var userNameController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SafeArea(
            child: Form(
              key: formKey,
              child: Column(children: [
                Text(
                  "Đăng ký tài khoản",
                  style: TextStyle(fontSize: 25),
                ),
                TextFormField(
                  controller: userNameController,
                  decoration: InputDecoration(
                      hintText: "+84 0244568331",
                      label: Text("Số điện thoại"),
                      prefixIcon: Icon(Icons.flag)),
                ),
                TextFormField(
                  validator: ((value) {
                    if (value == null || value.isEmpty)
                      return ("Tên người dùng không được để trống");
                  }),
                  controller: userNameController,
                  decoration: InputDecoration(
                      hintText: "Nhập tên của bạn",
                      label: Text("Tên người dùng"),
                      prefixIcon: Icon(Icons.person)),
                ),
                TextFormField(
                  validator: ((value) {
                    if (value == null || value.isEmpty)
                      return ("Tên đăng nhập không được để trống");
                  }),
                  controller: passwordController,
                  decoration: InputDecoration(
                      hintText: "Vui lòng nhập mật khẩu",
                      label: Text("Mật khẩu"),
                      prefixIcon: Icon(Icons.key)),
                ),
                InkWell(
                  // thêm sự kiện cho button
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      var userName = userNameController.text;
                      var pw = passwordController.text;
                      var snackBar =
                          SnackBar(content: Text("Xin chào: ${userName}"));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => register())));
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 91, 122, 175),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        "Đăng ký",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
