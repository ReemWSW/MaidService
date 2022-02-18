import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: const <Widget>[
            Text('ลงทะเบียน'),
            // TextFieldCustom(hintText: 'ชือนาม-สกุล'),
            // TextFieldCustom(hintText: 'อีเมลล์'),
            // TextFieldCustom(hintText: 'รหัสผ่าน'),
            // TextFieldCustom(hintText: 'ยืนยันรหัสผ่าน'),
            // TextFieldCustom(hintText: 'เบอร์'),
            // TextFieldCustom(hintText: 'เบอร์ฉุกเฉิน'),
            // // TextFieldCustom(hintText: 'วันเดือนปีเกิด'),
            // TextFieldCustom(hintText: 'จังหวัด'),
            // TextFieldCustom(hintText: 'รายละเอียดที่อยู่'),
            CustomFormField(hintText: 'ชือนาม-สกุล'),
            CustomFormField(hintText: 'อีเมลล์'),
            CustomFormField(hintText: 'รหัสผ่าน'),
            CustomFormField(hintText: 'ยืนยันรหัสผ่าน'),
            CustomFormField(hintText: 'เบอร์'),
            CustomFormField(hintText: 'เบอร์ฉุกเฉิน'),
            // TextFieldCustom(hintText: 'วันเดือนปีเกิด'),
            CustomFormField(hintText: 'จังหวัด'),
            CustomFormField(hintText: 'รายละเอียดที่อยู่'),
          ],
        ),
      ),
    );
  }
}

class CustomFormField extends StatelessWidget {
  final String hintText;

  const CustomFormField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: hintText,
          ),
        )
      ],
    );
  }
}

// class TextFieldCustom extends StatelessWidget {
//   final String hintText;
//   const TextFieldCustom({
//     Key? key,
//     required this.hintText,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Padding(
//       padding: EdgeInsets.all(8.0),
//       child: TextField(
//         obscureText: true,
//         decoration: InputDecoration(
//           border: OutlineInputBorder(),
//           hintText: 'sss',
//         ),
//       ),
//     );
//   }
// }
