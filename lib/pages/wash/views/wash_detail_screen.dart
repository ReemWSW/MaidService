import 'package:flutter/material.dart';

class WashDeatailScreen extends StatelessWidget {
  const WashDeatailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('บริการที่ครอบคลุม'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                elevation: 8,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textDetail('บริการคลอบครุมบริการซักเสื้อผ้า'),
                      const Text(
                        'sssssssssss',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }

  Text textDetail(String text) {
    return Text(
      text,
      style: const TextStyle(fontSize: 18),
    );
  }
}
