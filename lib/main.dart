import 'package:flutter/material.dart';
import 'package:nimatrix/views/dashboard2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Dashboard2(),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
