import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CatalogueAppDrawer extends StatelessWidget {
  const CatalogueAppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var avtarImageUrl = "https://kemblekaran.github.io/images/karan_kemble.jpg";
    return Drawer(
      child: ListView(children: [
        DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: const Text("kemblekaran"),
                accountEmail: const Text("kemblekaran@gmail.com"),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(avtarImageUrl)))),
        const ListTile(
          leading: Icon(Icons.contact_page),
          title: Text("Contact Us"),
        ),
        const ListTile(
          leading: Icon(Icons.logout),
          title: Text("Logout"),
        )
      ]),
    );
  }
}
