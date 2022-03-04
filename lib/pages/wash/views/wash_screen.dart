import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:maidservice/pages/components/textfield.dart';

class WashScreen extends StatelessWidget {
  const WashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('บริการเสื้อผ้า'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.info),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          children: [
            SizedBox(
                child: Column(children: <Widget>[
              const Text('สถานที่ต้องการรับบริการ'),
              ElevatedButton(
                  onPressed: () {}, child: const Text('เลือกสถานที่ต้องการ'))
            ])),
            SizedBox(
                child: Column(children: <Widget>[
              const Text('ขนาดที่ต้องการใช้บริการ'),
              ElevatedButton(onPressed: () {}, child: const Text('เลือกขนาด'))
            ])),
            SizedBox(
              child: Column(
                children: [
                  const Text('รายละเอียดเพิ่มเติม'),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    minLines: 3,
                    maxLines: 5,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'รายละเอียด',
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  const Text('เลือกวันที่ต้องการ'),
                  DateTimePicker(
                    type: DateTimePickerType.date,
                    dateMask: 'd MMM, yyyy',
                    initialValue: DateTime.now().toString(),
                    firstDate: DateTime(1970),
                    lastDate: DateTime(2030),
                    selectableDayPredicate: (date) {
                      // Disable weekend days to select from the calendar
                      if (date.weekday == 6 || date.weekday == 7) {
                        return false;
                      }

                      return true;
                    },
                    onChanged: (val) => print(val),
                    validator: (val) {
                      print(val);
                      return null;
                    },
                    onSaved: (val) => print(val),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
