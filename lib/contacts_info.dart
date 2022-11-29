import 'package:flutter/material.dart';

class ContactsInfo extends StatefulWidget {
  const ContactsInfo({super.key});

  @override
  State<ContactsInfo> createState() => _ContactsInfoState();
}

class _ContactsInfoState extends State<ContactsInfo> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    Column(children: const [
      SizedBox(height: 12),
      Text('Name : Huzaifa'),
      SizedBox(height: 12),
      Text('Email : hk7928042@gmail.com'),
      SizedBox(height: 12),
      Text('Date of Birth : 12-Oct-2001'),
      SizedBox(height: 12),
      Text('Office : Huzaifa Group of Companies'),
    ]),
    Column(children: const [
      Text('Name : Huzaifa'),
      SizedBox(height: 12),
      Text('Email : hk7928042@gmail.com'),
      SizedBox(height: 12),
      Text('Date of Birth : 12-Oct-2001'),
      SizedBox(height: 12),
      Text('Office : Huzaifa Group of Companies'),
    ]),
    Column(children: const [
      Text('Name : Huzaifa'),
      SizedBox(height: 12),
      Text('Email : hk7928042@gmail.com'),
      SizedBox(height: 12),
      Text('Date of Birth : 12-Oct-2001'),
      SizedBox(height: 12),
      Text('Office : Huzaifa Group of Companies'),
    ]),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts Information'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Business'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
        ],
      ),
    );
  }
}
