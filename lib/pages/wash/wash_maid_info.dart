import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class WashMaidInfo extends StatefulWidget {
  const WashMaidInfo({Key key}) : super(key: key);

  @override
  State<WashMaidInfo> createState() => _WashMaidInfoState();
}

class _WashMaidInfoState extends State<WashMaidInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ข้อมูลแม่บ้าน'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Image.asset('assets/images/login.png'),
              const Text("ชื่อ นามสกุล"),
              const Text("เบอร์: 0820320324"),
              RatingBarIndicator(
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
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text('ประวัติการทำงาน'),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                              'ซักอุณหภูมิร้อน  200 ชิ้น\nซักอุณหภูมิธรรมดา  5000 ชิ้น\nซักอุณหภูมิเย็น  300 ชิ้น\nรีดผ้า  7000 ชิ้น'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Text('รีวิว'),
              for (int i = 0; i < 3; i++) cardCustomer(context),
            ],
          ),
        ),
      ),
    );
  }

  Card cardCustomer(BuildContext context) {
    return Card(
      elevation: 5,
      child: ListTile(
        leading: SizedBox(child: Image.asset('assets/images/login.png')),
        title: const Text('ชื่อ นามสกุล'),
        subtitle: const Text('ทำงานได้ดี '),
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
      ),
    );
  }
}
