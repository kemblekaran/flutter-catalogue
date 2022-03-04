import 'package:catalog_app/routes/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _userName = "";
  bool _pressed = false;
  final _formKey = GlobalKey<FormState>();

  void navigateToHomeScreen(BuildContext buildContext) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _pressed = true;
      });

      await Future.delayed(const Duration(milliseconds: 500));
      await Navigator.pushNamed(context, CatalogueAppRoutes.homeRoute);
      setState(() {
        _pressed = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/login-image.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "Welcome $_userName",
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter you username",
                          labelText: "User Name"),
                      onChanged: (value) {
                        _userName = value;
                        setState(() {});
                      },
                      validator: (value) {
                        return value != null && value.isEmpty
                            ? "Username is mandatory"
                            : null;
                      },
                    ),
                    TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Enter your password",
                            labelText: "Password"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password is mandatory";
                          } else if (value.length > 6) {
                            return "password must be 6 characters";
                          }
                          return null;
                        }),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(_pressed ? 60 : 8),
                      child: InkWell(
                        onTap: () => navigateToHomeScreen(context),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 500),
                          width: _pressed ? 60 : 120,
                          height: 60,
                          alignment: Alignment.center,
                          child: _pressed
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : const Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
