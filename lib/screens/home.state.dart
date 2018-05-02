import 'package:flutter/material.dart';
import 'package:material_flutter/screens/home.dart';
import 'package:material_flutter/screens/news/news.dart';

class HomePageState extends State<HomePage> {

  PageController pageController;

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Material App'),
      ),
      body: new PageView(
        children: [
          new News(),
          new Container(color: Colors.black),
        ],
        onPageChanged: onHomePageChanged,
        controller: pageController,
      ),
      bottomNavigationBar: new BottomNavigationBar(
        fixedColor: Colors.red,
        items: getBottomNavItems(),
        onTap: onNavigationPress,
        currentIndex: currentPage,
      ),
    );
  }

  void onHomePageChanged(int currentPage){
   setState(() {
      this.currentPage = currentPage;
   });
  }

  List<BottomNavigationBarItem> getBottomNavItems() {
    List<BottomNavigationBarItem> bottomNavItems = [
      new BottomNavigationBarItem(
          icon: const Icon(Icons.favorite), title: new Text('News')),
      new BottomNavigationBarItem(
          icon: const Icon(Icons.history), title: new Text('History')),
    ];
    return bottomNavItems;
  }

  void onNavigationPress(int page){
    pageController.animateToPage(
        page,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease
    );
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  void initState() {
    super.initState();
    pageController = new PageController();
  }


}