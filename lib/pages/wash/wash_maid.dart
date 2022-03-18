import 'package:flutter/material.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class WashMaidPage extends StatelessWidget {
  const WashMaidPage({Key key}) : super(key: key);

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
            })
        // Column(
        //   children: [
        //     Card(
        //       child: Container(
        //         height: 100,
        //         color: Colors.white,
        //         child: Row(
        //           children: [
        //             Center(
        //               child: Padding(
        //                 padding: const EdgeInsets.all(10),
        //                 child: Expanded(
        //                   child: Image.asset("assets/images/login.png"),
        //                   flex: 2,
        //                 ),
        //               ),
        //             ),
        //             Expanded(
        //               child: Container(
        //                 alignment: Alignment.topLeft,
        //                 child: Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                     const Expanded(
        //                       flex: 5,
        //                       child: ListTile(
        //                         title: Text("ชื่อ นามสกุล"),
        //                         subtitle: Text("0200031213"),
        //                       ),
        //                     ),
        //                     RatingBarIndicator(
        //                       rating: 3.0,
        //                       itemBuilder: (context, index) => const Icon(
        //                         Icons.star,
        //                         color: Colors.amber,
        //                       ),
        //                       itemCount: 5,
        //                       itemSize: 30.0,
        //                       unratedColor: Colors.amber.withAlpha(50),
        //                       direction: Axis.horizontal,
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               flex: 8,
        //             ),
        //           ],
        //         ),
        //       ),
        //       elevation: 8,
        //       margin: const EdgeInsets.all(10),
        //     ),
        //   ],
        // ),
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
      ),
    );
  }
}
