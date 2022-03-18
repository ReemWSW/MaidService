import 'package:flutter/material.dart';

class CleanLocation extends StatelessWidget {
  final String text;
  CleanLocation({
    Key key,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text),
      ),
    );
  }
}
