import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/login/view/login.dart';
import 'pages/signup/views/signup.dart';
import 'pages/wash/views/wash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Maid Service',
      theme: ThemeData(
        fontFamily: 'EkkamaiNew',
        primarySwatch: Colors.green,
      ),
      home: const WashScreen(),
      getPages: [
        GetPage(name: "/login", page: () => const LoginPage()),
        GetPage(name: "/signup", page: () => const SignUpPage()),
      ],
    );
  }
}
