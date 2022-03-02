import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';

import '../../components/textfield.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1970),
        lastDate: DateTime(2030));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        print(selectedDate.toString());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Text(
                  'ลงทะเบียน',
                  style: TextStyle(fontSize: 30, fontFamily: 'EkkamaiNew'),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(18, 0, 18, 18),
                child: Column(
                  children: <Widget>[
                    const CustomFormField(
                      hintText: 'ชือนาม-สกุล',
                      keyboardType: TextInputType.name,
                    ),
                    const CustomFormField(
                      hintText: 'อีเมลล์',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const CustomFormField(
                      hintText: 'รหัสผ่าน',
                      obscureText: true,
                    ),
                    const CustomFormField(
                      hintText: 'ยืนยันรหัสผ่าน',
                      obscureText: true,
                    ),
                    const CustomFormField(
                      hintText: 'เบอร์',
                      keyboardType: TextInputType.number,
                    ),
                    const CustomFormField(
                      hintText: 'เบอร์ฉุกเฉิน',
                      keyboardType: TextInputType.number,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 18),
                      height: 50,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: DateTimePicker(
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
                    ),
                    const CustomFormField(
                      hintText: 'จังหวัด',
                      keyboardType: TextInputType.text,
                    ),
                    const CustomFormField(
                      hintText: 'รายละเอียดที่อยู่',
                      keyboardType: TextInputType.text,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            onPrimary: Colors.white,
                            shadowColor: Colors.greenAccent,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            minimumSize: const Size(119, 50),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'ลงทะเบียน',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
