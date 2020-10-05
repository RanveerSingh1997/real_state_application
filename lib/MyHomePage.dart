import 'package:flutter/material.dart';
import 'package:real_state_app/HomePage.dart';
import 'package:real_state_app/Screens/DashboardPage.dart';
import 'package:real_state_app/Screens/FavouritePage.dart';
import 'package:real_state_app/Screens/MessagesPage.dart';

import 'Widgets/AppDrawer.dart';
import 'Screens/SearchPage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex=0;
  final List<Widget> _currentPage = [
    HomePage(),
    SearchPage(),
    DashboardPage(),
    FavouritePage(),
    MessagesPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            centerTitle: true,
            title: Text("Home"),
          ),
          drawer: AppDrawer(),
          body: _currentPage[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor:Colors.brown,
              selectedItemColor:Colors.black,
              unselectedItemColor:Colors.grey,
              onTap:onTabTapped,
              items: [
                new BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('Home'),
                ),
                new BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text('Donor'),
                ),
                new BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    title: Text('Story')
                ),
                new BottomNavigationBarItem(
                    icon: Icon(Icons.favorite),
                    title: Text('Story')
                ),
                new BottomNavigationBarItem(
                    icon: Icon(Icons.add_alert),
                    title: Text('Story')
                )
              ]
          ),
        ),
      ),
    );
  }
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
