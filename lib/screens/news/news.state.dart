import 'package:flutter/material.dart';
import 'package:material_flutter/screens/news/news.dart';

class NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text("Favorites")
        ),
        body: new ListView()
    );
  }
}