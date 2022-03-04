import 'package:flutter/material.dart';

import '../widgets/bottomnavbar.dart';
import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appName = "Catalog App";
    var days = 1;
    var name = "CoderKandy";
    return Scaffold(
      appBar: AppBar(title: Text(appName)),
      body: Center(
          child: Container(
              child: Text("Welcome to Catalog App Day $days by $name"))),
      drawer: CatalogueAppDrawer(),
      bottomNavigationBar: CatalogueBottomNavigationBar(),
    );
  }
}
