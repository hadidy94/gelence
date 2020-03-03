import 'package:flutter/material.dart';
import 'package:glencee/helpers/button.dart';
import 'package:glencee/helpers/logo_card.dart';
import 'package:glencee/screens/login/view.dart';
import 'package:glencee/screens/signup/view.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height / 4,
                  top: MediaQuery.of(context).size.height / 2 - 150),
              child: logoCard(context: context)),
          buildButton(
              color: Theme.of(context).accentColor,
              title: 'تسجيل الدخول',
              context: context,
              bottom: 20,
              top: 0,
              right: 25,
              left: 25,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              }),
          buildButton(
              color: Theme.of(context).primaryColor,
              title: 'انشاء حساب جديد',
              bottom: 20,
              top: 0,
              right: 25,
              left: 25,
              context: context,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()));
              }),
        ],
      ),
    );
  }
}
