import 'package:flutter/material.dart';
import 'package:maidservice/pages/wash/views/wash_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(65),
              child: Align(
                alignment: Alignment.center,
                child: Text('Maid Services',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Text(
                'หมวดหมู่',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20),
              ),
            ),
            Wrap(
              spacing: 30,
              runSpacing: 80,
              children: [
                cardCetories(
                  context,
                  Image.asset(
                    'assets/images/wash.png',
                    height: 150,
                  ),
                  'ซักผ้า',
                ),
                cardCetories(
                  context,
                  Image.asset(
                    'assets/images/clean.png',
                    height: 150,
                  ),
                  'ทำความสะอาดบ้าน',
                ),
                cardCetories(
                  context,
                  Image.asset(
                    'assets/images/cleanfur.png',
                    height: 150,
                  ),
                  'ทำความสะอาดเฟอร์นิเจอร์',
                ),
                cardCetories(
                  context,
                  Image.asset(
                    'assets/images/allservices.png',
                    height: 150,
                  ),
                  'ทำความสะอาดทั้งหมด',
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'หน้าแรก',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'รายการ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.create_rounded),
            label: 'งานของฉัน',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'ฉัน',
          ),
        ],
        backgroundColor: Colors.grey[600],
        unselectedItemColor: Colors.black,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  Card cardCetories(BuildContext context, Image image, String title) {
    return Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const WashScreen()),
          );
        },
        child: Column(
          children: [
            image,
            Text(title),
          ],
        ),
      ),
    );
  }
}
