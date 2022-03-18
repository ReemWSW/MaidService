import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

import 'wash_detail_screen.dart';
import 'wash_maid.dart';

class WashScreen extends StatelessWidget {
  const WashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('บริการเสื้อผ้า'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const WashDeatailScreen()),
              );
            },
            icon: const Icon(Icons.info),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                ListWash(
                  btnlabel: 'สถานที่ต้องการรับบริการ',
                  label: 'เลือกสถานที่ที่ต้องการ',
                  onpress: () {},
                ),
                ListWash(
                  btnlabel: 'ขนาดที่ต้องการใช้บริการ',
                  label: 'เลือกขนาด',
                  onpress: () {},
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 36),
                  child: Column(children: [
                    const TextLabel(
                      label: 'รายละเอียดเพิ่มเติม',
                    ),
                    TextFormField(
                        keyboardType: TextInputType.text,
                        minLines: 3,
                        maxLines: 5,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'รายละเอียด',
                        ))
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 36),
                  child: Column(
                    children: [
                      const TextLabel(label: 'เลือกวันที่ต้องการ'),
                      DateTimePicker(
                        type: DateTimePickerType.dateTimeSeparate,
                        dateMask: 'dd-MMM-yyyy',
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
                ),
              ],
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('เงื่อนไขการรับบริการ'),
                    content: const Text(
                        'หากไม่มีการตอบรับบริการภายใน 10 ชั่วโมงถือเป็นการยกเลิกโดยอัตโนมัติ'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context, 'OK');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WashMaidPage()),
                          );
                        },
                        child: const Text('ตกลง'),
                      ),
                    ],
                  ),
                ),
                child: const Text('ถัดไป'),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(120, 50),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ListWash extends StatelessWidget {
  final String label;
  final String btnlabel;
  final Function onpress;
  const ListWash({
    Key key,
    @required this.label,
    @required this.btnlabel,
    @required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 36),
      child: Column(children: <Widget>[
        TextLabel(label: label),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 56,
          child: ElevatedButton(
              onPressed: onpress,
              child: Text(
                btnlabel,
                style: const TextStyle(fontSize: 16),
              )),
        )
      ]),
    );
  }
}

class TextLabel extends StatelessWidget {
  const TextLabel({
    Key key,
    @required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Text(
        label,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
