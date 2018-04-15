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
      bottomNavigationBar: getBottomNav(),
    );
  }
}

BottomNavigationBar getBottomNav() {
  return new BottomNavigationBar(
    fixedColor: Colors.red,
    items: getBottomNavItems(),
  );
}

List<BottomNavigationBarItem> getBottomNavItems() {
  List<BottomNavigationBarItem> bottomNavItems = [
    new BottomNavigationBarItem(icon: const Icon(Icons.favorite), title: new Text('Favorites')),
    new BottomNavigationBarItem(icon: const Icon(Icons.history), title: new Text('History')),
  ];
  return bottomNavItems;
}