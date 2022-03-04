import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maidservice/pages/home/view/home.dart';

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
      debugShowCheckedModeBanner: false,
      title: 'Maid Service',
      theme: ThemeData(
        fontFamily: 'EkkamaiNew',
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
      getPages: [
        GetPage(name: "/login", page: () => const LoginPage()),
        GetPage(name: "/signup", page: () => const SignUpPage()),
        GetPage(name: "/home", page: () => const HomePage()),
        GetPage(name: "/wash", page: () => const WashScreen()),
      ],
    );
  }
}
