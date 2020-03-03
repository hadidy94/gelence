import 'package:flutter/material.dart';
import 'package:glencee/screens/home/view.dart';
import 'package:glencee/screens/make_order/sender_view.dart';
import 'package:glencee/screens/more/view.dart';
import 'package:glencee/screens/notifications/view.dart';
import 'package:glencee/screens/profile/view.dart';

class BottomNavigationScreen extends StatefulWidget {
  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedIndex = 0;
  var pages = [
    HomeScreen(),
    ProfileScreen(),
    NotificationScreen(),
    SenderMakeOrderScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 20,
              ),
              title: Text(
                'الرئيسية',
                style: TextStyle(fontSize: 16, fontFamily: 'Bahij'),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 20,
              ),
              title: Text(
                'حسابي',
                style: TextStyle(fontSize: 16, fontFamily: 'Bahij'),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_none,
                size: 20,
              ),
              title: Text(
                'الاشعارات',
                style: TextStyle(fontSize: 16, fontFamily: 'Bahij'),
              )),
          BottomNavigationBarItem(
              icon: Center(
                child: Icon(
                  Icons.add,
                  size: 20,
                ),
              ),
              title: Text(
                'اضافة شحنة',
                style: TextStyle(fontSize: 16, fontFamily: 'Bahij'),
              )),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
