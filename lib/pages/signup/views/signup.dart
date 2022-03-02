import 'package:flutter/material.dart';
import 'package:maidservice/pages/components/textfield.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
                    CustomFormField(
                      hintText: 'ชือนาม-สกุล',
                      keyboardType: TextInputType.name,
                    ),
                    CustomFormField(
                      hintText: 'อีเมลล์',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    CustomFormField(
                      hintText: 'รหัสผ่าน',
                      obscureText: true,
                    ),
                    CustomFormField(
                      hintText: 'ยืนยันรหัสผ่าน',
                      obscureText: true,
                    ),
                    CustomFormField(
                      hintText: 'เบอร์',
                      keyboardType: TextInputType.number,
                    ),
                    CustomFormField(
                      hintText: 'เบอร์ฉุกเฉิน',
                      keyboardType: TextInputType.number,
                    ),
                    // TextFieldCustom(hintText: 'วันเดือนปีเกิด'),
                    CustomFormField(
                      hintText: 'จังหวัด',
                      keyboardType: TextInputType.text,
                    ),
                    CustomFormField(
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
                            minimumSize: const Size(119, 50), //////// HERE
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
