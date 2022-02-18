import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 200,
              child: Image.asset('assets/images/login.png'),
            ),
            const Text(
              'เข้าสู่ระบบ',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'อีเมลล์',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'รหัสผ่าน',
                ),
              ),
            ),
            const Button(label: 'เข้าสู่ระบบ'),
            TextButton(onPressed: () {}, child: const Text('ลืมรหัสผ่าน')),
            const Button(label: 'ลงทะเบียน'),
          ],
        ),
      ),
    );
  }
}
