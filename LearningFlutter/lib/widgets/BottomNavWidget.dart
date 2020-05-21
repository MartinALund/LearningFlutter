import 'package:LearningFlutter/models/BottomNavItem.dart';
import 'package:LearningFlutter/pages/MainPage.dart';
import 'package:LearningFlutter/pages/SecondaryPage.dart';
import 'package:flutter/material.dart';


class BottomNavWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<BottomNavWidget> {
  int currentTabIndex = 0;

  var bottomNavItems = [
    new BottomNavItem(
        widget: MainPage(), title: 'Main', icon: Icon(Icons.mood)),
    new BottomNavItem(
        widget: SecondaryPage(), title: 'Secondary', icon: Icon(Icons.home)),
    new BottomNavItem(
        widget: Text('Tjek'), title: 'Final', icon: Icon(Icons.airline_seat_individual_suite)),
  ];

  @override
  Widget build(BuildContext context) {

    final tabPages = new List<Widget>();
    final navItems = new List<BottomNavigationBarItem>();

    for (var bottomNavItem in bottomNavItems){
      tabPages.add(bottomNavItem.widget);
      navItems.add(new BottomNavigationBarItem(icon: bottomNavItem.icon, title: Text(bottomNavItem.title)));
    }

    assert(tabPages.length == navItems.length);
    final bottomNavBar = BottomNavigationBar(
      items: navItems,
      currentIndex: currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          currentTabIndex = index;
        });
      },
      backgroundColor: Colors.black87,
      selectedItemColor: Theme.of(context).primaryColorDark,
      unselectedItemColor: Theme.of(context).accentColor,
    );
    return Scaffold(
      body: tabPages[currentTabIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
