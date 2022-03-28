import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Button extends StatelessWidget {
  final String label;
  final String toNamed;
  const Button({
    Key key,
    @required this.label,
    @required this.toNamed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, toNamed);
        },
        child: Text(label),
      ),
    );
  }
}
