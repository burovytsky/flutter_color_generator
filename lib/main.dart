import 'package:flutter/material.dart';
import 'package:test_flutter_app/src/ColorGenerator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Generator',
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
      ),
      home: ColorGenerator()
    );
  }

}
