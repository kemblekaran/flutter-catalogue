import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appName = 'Catalog App';
    return Scaffold(
      appBar: AppBar(title: Text(appName)),
      body: Center(
          child: Text("Login",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textScaleFactor: 2.0)),
    );
  }
}
