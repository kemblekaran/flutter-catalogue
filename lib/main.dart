import 'package:catalog_app/pages/loginpage.dart';

import '/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const CatalogApp());
}

class CatalogApp extends StatelessWidget {
  const CatalogApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData(
          primarySwatch: Colors.red,
          fontFamily: GoogleFonts.roboto().fontFamily),
      darkTheme: ThemeData(primarySwatch: Colors.purple),
      routes: {
        "/": (context) => LoginPage(),
        "/login": (context) => LoginPage(),
        "/home": ((context) => HomePage())
      },
    );
  }
}
