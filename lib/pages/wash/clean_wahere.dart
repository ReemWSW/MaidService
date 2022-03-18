import 'package:flutter/material.dart';

class CleanWherePage extends StatelessWidget {
  const CleanWherePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('สถานที่ต้องการรับบริการ')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Container(
                margin: const EdgeInsets.all(8.0),
                alignment: Alignment.topLeft,
                child: const Text('ที่อยู่')),
            addressSelect(context, true),
            addressSelect(context, false),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 56.0,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black,
                    primary: Colors.white,
                  ),
                  icon: const Icon(Icons.add),
                  label: const Text('เพิ่มทีอยู่ใหม่'),
                  onPressed: () {},
                )),
          ],
        ),
      ),
    );
  }

  Container addressSelect(BuildContext context, bool selected) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          border: Border.all(
            color:
                selected ? Theme.of(context).colorScheme.primary : Colors.grey,
            width: selected ? 2.0 : 1.0,
          ),
          borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('ชื่อ นามสกุล'),
          Text('เบอร์: 020312513'),
          Text(
            '425/2 หอพักเปี่ยมอรุณ หมู่ที่ 3 ซอยเกกีงาม1 ถนนฉลองกรุง1 แขวงลาดกระบัง เขตลาดกระบัง กรุงเทพมหานคร',
          )
        ],
      ),
    );
  }
}
