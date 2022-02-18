import 'package:flutter/material.dart';

import 'pages/login/view/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maid Service',
      theme: ThemeData(
        fontFamily: 'Inter',
        primarySwatch: Colors.green,
      ),
      // home: const MyHomePage(title: 'Flutter  Home Page'),
      home: const LoginPage(),
    );
  }
}
