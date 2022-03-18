import 'package:flutter/material.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'wash_maid_info.dart';

class WashMaidPage extends StatefulWidget {
  const WashMaidPage({Key key}) : super(key: key);

  @override
  State<WashMaidPage> createState() => _WashMaidPageState();
}

class _WashMaidPageState extends State<WashMaidPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('แม่บ้านที่รับงาน'),
      ),
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return cardMaid();
        },
      ),
    );
  }

  Card cardMaid() {
    return Card(
      elevation: 5,
      child: ListTile(
        leading: SizedBox(child: Image.asset('assets/images/login.png')),
        title: const Text('ชื่อ นามสกุล'),
        subtitle: const Text('0800000000'),
        trailing: RatingBarIndicator(
          rating: 3.0,
          itemBuilder: (context, index) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          itemCount: 5,
          itemSize: 30.0,
          unratedColor: Colors.amber.withAlpha(50),
          direction: Axis.horizontal,
        ),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const WashMaidInfo()),
        ),
      ),
    );
  }
}
