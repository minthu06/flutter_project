import 'package:example/home/home_page.dart';
import 'package:example/provider/news_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// void main() {
//   runApp(MultiProvider(
//     providers: [ChangeNotifierProvider(create: (_) => NewsProvider())],
//     child: MaterialApp(
//       home: (HomePage()),
//     ),
//   ));
// }
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
