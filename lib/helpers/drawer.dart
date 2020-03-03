import 'package:flutter/material.dart';
import 'package:glencee/screens/about_app/view.dart';
import 'package:glencee/screens/bank_exchange/view.dart';
import 'package:glencee/screens/cities/view.dart';
import 'package:glencee/screens/conditions/view.dart';
import 'package:glencee/screens/contact_us/view.dart';
import 'package:glencee/screens/mony_movements/view.dart';
import 'package:glencee/screens/privacy_policy/view.dart';
import 'package:glencee/screens/track_order_with_number/view.dart';

Widget _drawerItem(
    {BuildContext context, String title, Function onTap, String image}) {
  return ListTile(
      title: Row(
        children: <Widget>[
          Image.asset(
            image,
            width: 20,
            height: 20,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
          )
        ],
      ),
      onTap: onTap);
}

Widget _line() {
  return Padding(
    padding: EdgeInsets.only(left: 20, right: 15),
    child: Container(
      height: 1,
      color: Colors.black12,
    ),
  );
}

Widget buildDrawer({BuildContext context, String userName, String token}) {
  return SizedBox(
    width: 250,
    child: Drawer(
      elevation: 0,
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/logo_white.png'))),
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
            ),
          ),
          _drawerItem(
              context: context,
              title: 'حركات الرصيد',
              image: 'assets/moneyy.png',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MoneyMovementsScreen()));
              }),
          _line(),
          _drawerItem(
              context: context,
              title: 'التقارير',
              image: 'assets/sideicon.png',
              onTap: () {
                Navigator.pop(context);
              }),
          _line(),
          _drawerItem(
              context: context,
              title: 'فترة التحويل البنكي',
              image: 'assets/exch.png',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BankExchangeScreen()));
              }),
          _line(),
          _drawerItem(
              context: context,
              title: 'تفعيل قسيمة',
              image: 'assets/gift.png',
              onTap: () {
                Navigator.pop(context);
              }),
          _line(),
          _drawerItem(
              context: context,
              title: 'تتبع برقم الشحنة',
              image: 'assets/arrows.png',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TrackOrderWithNumberScreen()));
              }),
          _line(),
          _drawerItem(
              context: context,
              title: 'المدن',
              image: 'assets/moneyy.png',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CitiesScreen()));
              }),
          _line(),
          _drawerItem(
              context: context,
              title: 'الشروط والاحكام',
              image: 'assets/privacy.png',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ConditionsScreen()));
              }),
          _line(),
          _drawerItem(
              context: context,
              title: 'سياسة الخصوصية',
              image: 'assets/privacy.png',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PrivacyPolicyScreen()));
              }),
          _line(),
          _drawerItem(
              context: context,
              title: 'اتصل بنا',
              image: 'assets/mailadd.png',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ContactUsScreen()));
              }),
          _line(),
          _drawerItem(
              context: context,
              title: 'عن Glencee',
              image: 'assets/about.png',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutAppScreen()));
              }),
          _line()
        ],
      ),
    ),
  );
}
