import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/HD.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/register.dart';
import 'package:flutter_application_1/stack.dart';

class login_page extends StatelessWidget {
  login_page({super.key});
  var userNameController = TextEditingController();
  var passworkController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: formKey,
              child: Column(children: [
                Text(
                  "Đăng nhập hệ thống",
                  style: TextStyle(fontSize: 25),
                ),
                Image.asset(
                  "assets/images/EVN.png",
                  width: 200,
                  height: 300,
                ),
                TextFormField(
                  validator: ((value) {
                    if (value == null || value.isEmpty)
                      return ("Tên đăng nhập không được để trống");
                  }),
                  controller: userNameController,
                  decoration: InputDecoration(
                      hintText: "Vui lòng nhập tên đăng nhập",
                      label: Text("Tên đăng nhập"),
                      prefixIcon: Icon(Icons.person)),
                ),
                TextFormField(
                  validator: ((value) {
                    if (value == null || value.isEmpty)
                      return ("Mật khẩu không được để trống");
                  }),
                  controller: passworkController,
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
                      var pw = passworkController.text;
                      var snackBar =
                          SnackBar(content: Text("Xin chào: ${userName}"));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => stackWidget())));
                    }
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
                        "Đăng nhập",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                ),
                InkWell(
                  // thêm sự kiện cho button
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      var userName = userNameController.text;
                      var pw = passworkController.text;
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
                // Padding(
                //   padding: EdgeInsets.all(8.0),
                //   child: ElevatedButton(
                //     onPressed: () {
                //       if (formKey.currentState!.validate()) {
                //         var userName = userNameController.text;
                //         var pw = passworkController.text;
                //         var snackBar =
                //             SnackBar(content: Text("Xin chào: ${userName}"));
                //         ScaffoldMessenger.of(context).showSnackBar(snackBar);
                //       }
                //       ;
                //       // Get.to(() => stackWidget());
                //     },
                //     child: Text("Đăng nhập"),
                //   ),
                // ),
                // Padding(
                //   padding: EdgeInsets.all(8.0),
                //   child: ElevatedButton(
                //     onPressed: () {
                //       if (formKey.currentState!.validate()) {
                //         var userName = userNameController.text;
                //         var pw = passworkController.text;
                //       }
                //       ;
                //       // Get.to(() => stackWidget());
                //     },
                //     child: Text("Đăng ký"),
                //   ),
                // ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
