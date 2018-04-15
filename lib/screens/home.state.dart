import 'package:flutter/material.dart';
import 'package:material_flutter/screens/home.dart';

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new PageView(
        children: [
          new Container(color: Colors.red),
          new Container(color: Colors.black),
          new Container(color: Colors.amber),
        ],
      ),
    );
  }
}