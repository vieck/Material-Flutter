import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Material Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Material Design in Flutter'),
        ),
        bottomNavigationBar: new BottomNavigationBar(
          fixedColor: Colors.red,
          items: getBottomNavItems()
        ),
      ),
    );
  }

  List<BottomNavigationBarItem> getBottomNavItems() {
    List<BottomNavigationBarItem> bottomNavItems = [
      new BottomNavigationBarItem(icon: const Icon(Icons.favorite), title: new Text('Favorites')),
      new BottomNavigationBarItem(icon: const Icon(Icons.history), title: new Text('History')),
    ];
    return bottomNavItems;
  }
}
