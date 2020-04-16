import 'package:flutter/material.dart';
import 'package:newsapp/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NewsApp',
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.red,
        backgroundColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}
