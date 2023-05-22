import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:source_lambda_mobile_app/pages/home/home_pages/browser.dart';
import 'package:source_lambda_mobile_app/pages/home/home_pages/empty.dart';
import 'package:source_lambda_mobile_app/pages/home/home_pages/marketplace.dart';

class HomeScaffold extends StatefulWidget {
  @override
  _HomeScaffoldState createState() => _HomeScaffoldState();
}

class _HomeScaffoldState extends State<HomeScaffold> {
  late int _currentIndex;
  final pages = [MarketPlace(), Browser(), Empty()];

  void changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: pages[_currentIndex],
      bottomNavigationBar: DotNavigationBar(
        currentIndex: _currentIndex,
        onTap: changePage,
        dotIndicatorColor: Colors.transparent,
        items: [
          DotNavigationBarItem(
              icon: Icon(Icons.home),
              selectedColor: Colors.brown,
              unselectedColor: Colors.grey[200]),
          DotNavigationBarItem(
              icon: Icon(Icons.search),
              selectedColor: Colors.brown,
              unselectedColor: Colors.grey[200]),
          DotNavigationBarItem(
              icon: Icon(Icons.person),
              selectedColor: Colors.brown,
              unselectedColor: Colors.grey[200])
        ],
      ),
    );
  }
}
