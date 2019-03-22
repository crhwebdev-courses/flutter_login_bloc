import 'package:flutter/material.dart';

class App extends StatelessWidget {
  build(context) {
    return MaterialApp(
        title: 'Log Me In',
        home: Scaffold(
          body: LoginScreen(),
        ));
  }
}
