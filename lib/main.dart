import 'package:flutter/material.dart';
import 'package:material_flutter/screens/home/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Material Flutter',
      home: new HomePage(),
    );
  }
}
