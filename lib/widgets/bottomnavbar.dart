import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CatalogueBottomNavigationBar extends StatelessWidget {
  const CatalogueBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
      BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
          activeIcon: Icon(Icons.home_filled),
          tooltip: "Explore"),
      BottomNavigationBarItem(
          icon: Icon(Icons.account_box),
          label: "Profile",
          activeIcon: Icon(Icons.account_box_outlined))
    ]);
  }
}
